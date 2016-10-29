package com.twitter.android.client.notifications;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.view.WindowManager;
import blg;
import ccc;
import cdb;
import cfb;
import com.twitter.android.client.ai;
import com.twitter.android.client.z;
import com.twitter.internal.android.service.ab;
import com.twitter.library.client.bg;
import com.twitter.library.media.util.q;
import com.twitter.library.provider.aq;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.de;
import com.twitter.library.service.aa;
import com.twitter.media.request.a;
import com.twitter.model.core.MediaEntity;
import com.twitter.model.core.Tweet;
import com.twitter.model.core.i;
import com.twitter.util.collection.n;
import com.twitter.util.math.Size;
import com.twitter.util.ui.r;
import defpackage.cdy;
import defpackage.cfg;
import defpackage.cfh;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
class af extends ai<Void, List<ae>> {
    private final Context a;
    private final long b;
    private final Size c;
    private final cfg g;
    private boolean h;
    private int i;

    protected /* synthetic */ Object c() {
        return e();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return b();
    }

    af(z zVar, StoriesNotif storiesNotif, Context context, long j) {
        super("PrepareStoriesOperation", zVar, storiesNotif);
        this.a = context;
        this.b = j;
        this.g = new cfh(context.getResources().getColor(2131886099));
        this.c = Size.a(r.a((WindowManager) context.getSystemService("window")).x / 2, context.getResources().getDimensionPixelSize(2131690004));
    }

    protected List<ae> b() throws InterruptedException {
        blg blg = new blg(this.a, bg.a().b(this.b));
        blg.k("Started due to notification send-to-sync.");
        aa P = blg.P();
        if (P.b()) {
            ContentResolver contentResolver = this.a.getContentResolver();
            Cursor query = contentResolver.query(ck.a(de.a, this.b), cdb.a, "story_tag=? AND data_type=? AND story_is_read=?", new String[]{String.valueOf(1), String.valueOf(1), String.valueOf(0)}, null);
            List arrayList = new ArrayList(2);
            if (query != null) {
                try {
                    this.i = query.getCount();
                    if (query.moveToFirst()) {
                        do {
                            String string = query.getString(cdb.r);
                            String string2 = query.getString(cdb.A);
                            String string3 = query.getString(cdb.B);
                            Tweet a = a(contentResolver, string, 0);
                            if (a != null) {
                                a aVar;
                                i a2 = aq.b(a).a(true).d(false).e(cdy.a(a)).a();
                                if (a.w.d.c()) {
                                    aVar = null;
                                } else {
                                    aVar = q.a((MediaEntity) a.w.d.a(0)).a(this.g).a(this.c).a();
                                }
                                arrayList.add(new ae(string, string2, string3, a.d(), a.q, a2.a, aVar));
                            }
                            if (!query.moveToNext()) {
                                break;
                            }
                        } while (!this.h);
                    }
                    query.close();
                } catch (Throwable th) {
                    query.close();
                }
            }
            return arrayList.subList(0, Math.min(2, arrayList.size()));
        }
        cfb.b("StoriesNotif", "Failed to fetch stories: " + P.e());
        return n.g();
    }

    protected List<ae> e() {
        this.h = true;
        return n.g();
    }

    protected void a(z zVar, StatusBarNotif statusBarNotif, ab<List<ae>> abVar) {
        StoriesNotif storiesNotif = (StoriesNotif) statusBarNotif;
        StoriesNotif.a(storiesNotif, (List) abVar.b());
        StoriesNotif.a(storiesNotif, this.i);
        zVar.a(statusBarNotif);
    }

    private Tweet a(ContentResolver contentResolver, String str, int i) {
        Tweet tweet = null;
        ContentResolver contentResolver2 = contentResolver;
        Cursor query = contentResolver2.query(ck.a(de.a, this.b), cdb.a, "story_tag=? AND data_type=? AND story_id=?", new String[]{String.valueOf(1), String.valueOf(4), str}, null);
        if (query != null) {
            try {
                if (query.moveToPosition(i)) {
                    tweet = ccc.a.a(query);
                }
                query.close();
            } catch (Throwable th) {
                query.close();
            }
        }
        return tweet;
    }
}
