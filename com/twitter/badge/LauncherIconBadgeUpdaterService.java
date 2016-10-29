package com.twitter.badge;

import android.app.IntentService;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import com.twitter.android.mx;
import com.twitter.library.client.Session;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.library.provider.at;
import com.twitter.library.provider.bl;
import com.twitter.library.provider.cf;
import com.twitter.library.provider.ck;
import com.twitter.library.provider.cu;
import defpackage.bcs;
import defpackage.cfb;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
public class LauncherIconBadgeUpdaterService extends IntentService {
    private Session a;
    private a b;

    public static void a(Context context) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.startService(new Intent(applicationContext, LauncherIconBadgeUpdaterService.class).setAction("update"));
    }

    public static void b(Context context) {
        Context applicationContext = context.getApplicationContext();
        applicationContext.startService(new Intent(applicationContext, LauncherIconBadgeUpdaterService.class).setAction("clear"));
    }

    public LauncherIconBadgeUpdaterService() {
        super(LauncherIconBadgeUpdaterService.class.getName());
        setIntentRedelivery(true);
    }

    protected void onHandleIntent(Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (action != null) {
                int i = -1;
                switch (action.hashCode()) {
                    case -838846263:
                        if (action.equals("update")) {
                            i = 0;
                            break;
                        }
                        break;
                    case 94746189:
                        if (action.equals("clear")) {
                            i = 1;
                            break;
                        }
                        break;
                }
                switch (i) {
                    case mx.View_android_theme /*0*/:
                        String e = a().e();
                        if (e != null) {
                            i = b(e) + a(e);
                            LauncherIconBadgeUtil.a((Context) this).a(i);
                            cfb.b("BadgeUpdaterService", "UPDATE: " + i);
                        }
                    case WireMessage.WIRE_CHAT /*1*/:
                        LauncherIconBadgeUtil.a((Context) this).a(0);
                        cfb.b("BadgeUpdaterService", "CLEAR");
                    default:
                        throw new IllegalStateException("unknown intent action for " + getClass().getSimpleName());
                }
            }
        }
    }

    private int a(String str) {
        if (!b().b(c(str))) {
            return 0;
        }
        Cursor query = getContentResolver().query(ck.a(cu.a, a().g()), null, null, null, null);
        if (query == null) {
            return 0;
        }
        int i;
        if (query.moveToFirst()) {
            i = query.getInt(0);
        } else {
            i = 0;
        }
        query.close();
        return i;
    }

    private int b(String str) {
        if (!b().a(c(str))) {
            return 0;
        }
        Cursor query = getContentResolver().query(Uri.withAppendedPath(bl.a, str), at.a, null, null, null);
        if (query == null) {
            return 0;
        }
        int i;
        if (query.moveToFirst()) {
            i = query.getInt(3);
        } else {
            i = 0;
        }
        query.close();
        return i;
    }

    private String c(String str) {
        return new l(this, str).getString(cf.a, null);
    }

    private Session a() {
        if (this.a == null) {
            this.a = bg.a().c();
        }
        return this.a;
    }

    private a b() {
        if (this.b == null) {
            this.b = new a(getResources().getStringArray(bcs.badge_behaviors_values));
        }
        return this.b;
    }
}
