package com.twitter.android;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import bgd;
import com.twitter.android.client.c;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.network.an;
import com.twitter.library.scribe.TwitterScribeLog;
import com.twitter.library.service.aa;
import com.twitter.library.util.k;
import com.twitter.library.util.l;
import com.twitter.library.util.o;
import com.twitter.util.collection.r;
import com.twitter.util.m;
import com.twitter.util.object.e;
import defpackage.ark;
import defpackage.aru;
import defpackage.asa;
import defpackage.bbn;
import defpackage.bbu;
import defpackage.bfz;
import defpackage.buc;
import defpackage.cfb;
import java.nio.ByteBuffer;
import java.util.Map;

/* compiled from: Twttr */
public class ContactsUploadService extends IntentService implements o {
    private c a;
    private k b;
    private Session c;
    private String d;
    private int e;
    private int f;
    private int g;
    private long h;
    private int i;
    private boolean j;

    public ContactsUploadService() {
        super("ab_upload_service");
        this.f = 0;
        this.g = 0;
        this.i = 0;
    }

    protected void onHandleIntent(Intent intent) {
        if (intent == null) {
            bbn.a(new NullPointerException("ContactsUploadService intent is null"));
            return;
        }
        this.d = intent.getStringExtra("scribe_page_term");
        this.a = c.a((Context) this);
        this.a.a(false);
        this.c = bg.a().c();
        this.h = m.b();
        cfb.b("ab_upload", "Starting AB Upload..");
        this.b = l.a(getApplicationContext());
        Cursor a = this.b.a();
        this.j = intent.getBooleanExtra("extra_is_live_sync_experience", false);
        if (this.j || (a != null && a.getCount() > 0)) {
            a(a);
        } else {
            bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.c.g()).b(this.d + ":follow_friends:::resolvable")).a(0));
            a(new Intent("upload_success_broadcast").putExtra("lookup_complete", true), false, true);
            a();
        }
        if (a != null) {
            a.close();
        }
    }

    private void a(Cursor cursor) {
        Map a = cursor != null ? this.b.a(cursor) : r.e();
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(this.c.g()).b(this.d + ":follow_friends:::resolvable")).a((long) a.size()));
        if (!this.b.b()) {
            this.b.c();
        }
        a(a);
    }

    private void a(Map<String, ByteBuffer> map) {
        boolean z;
        this.e = an.a(map.size(), 50);
        if (this.e > 0) {
            a("contacts:timing:total:upload_contacts", this.c.g()).i();
        }
        this.b.a(map, this, this.j);
        new com.twitter.library.client.l(this, (String) e.a(this.c.e())).a().a("addressbook_import_done", true).apply();
        Intent putExtra = new Intent("upload_success_broadcast").putExtra("lookup_complete", true).putExtra("pages", this.e);
        if (this.e > 0) {
            putExtra.putExtra("page", this.e - 1);
        }
        if (this.i == 0) {
            z = true;
        } else {
            z = false;
        }
        a(putExtra, false, z);
        a();
    }

    public void a(bfz bfz, aa aaVar) {
        if (!aaVar.b()) {
            this.i++;
        }
        if (aaVar.g() != null) {
            Bundle bundle = bfz.o;
            int i = bundle.getInt("page", -1);
            int i2 = bundle.getInt("pages", -1);
            this.f = bundle.getInt("num_users") + this.f;
            this.g++;
            if (this.g != i2) {
                a(new Intent("upload_success_broadcast").putExtra("page", i).putExtra("pages", i2), true, false);
            }
        }
    }

    public void a(bgd bgd, aa aaVar) {
    }

    private static asa a(String str, long j) {
        return asa.a(str, aru.b(), j, ark.m);
    }

    private void a(Intent intent, boolean z, boolean z2) {
        LocalBroadcastManager.getInstance(this).sendBroadcast(intent);
        this.a.b(z);
        this.a.a(z2);
    }

    private void a() {
        long g = this.c.g();
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.d, "follow_friends::forward_lookup:request")).a((long) this.e));
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.d, "follow_friends::forward_lookup:failure")).a((long) this.i));
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.d, "follow_friends::forward_lookup:count")).a((long) this.f));
        bbu.a(((TwitterScribeLog) new TwitterScribeLog(g).b(this.d, "import_addressbook::import:done")).a(m.b() - this.h));
        a("contacts:timing:total:upload_contacts", g).j();
        this.a.b(m.b());
        this.a.f();
    }

    public static boolean a(Context context, String str, boolean z) {
        if (buc.a(context, z)) {
            return false;
        }
        context.startService(new Intent(context, ContactsUploadService.class).putExtra("scribe_page_term", str).putExtra("extra_is_live_sync_experience", z));
        c.a(context).b(true);
        return true;
    }
}
