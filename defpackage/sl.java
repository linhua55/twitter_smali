package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.support.annotation.VisibleForTesting;
import bwt;
import bwy;
import com.twitter.android.alerts.receivers.ConnectivityChangedReceiver;
import com.twitter.android.alerts.receivers.LocationUpdatesAlertsReceiver;
import com.twitter.android.alerts.receivers.PowerStateChangedReceiver;
import com.twitter.config.d;
import com.twitter.library.client.bg;
import com.twitter.library.client.l;
import com.twitter.util.aj;
import sk;
import sm;

/* compiled from: Twttr */
/* renamed from: sl */
public class sl {
    static final String a;
    static final String b;
    private static sl c;
    private static String d;
    private final bwy e;
    private SharedPreferences f;
    private boolean g;
    private boolean h;
    private final asp i;

    static {
        a = sl.class.getName();
        b = a + ":alerts_enabled";
    }

    @VisibleForTesting
    sl(bwy bwy, boolean z, boolean z2) {
        this.i = new sm(this);
        this.e = bwy;
        this.h = z;
        this.g = z2;
        bvj.a(this.i);
    }

    public static synchronized sl a(Context context) {
        sl a;
        synchronized (sl.class) {
            a = sl.a(context, bg.a().c().e());
        }
        return a;
    }

    @VisibleForTesting
    static synchronized sl a(Context context, String str) {
        sl slVar;
        synchronized (sl.class) {
            if (c == null) {
                c = new sl(new bwt(context, sk.a(), sl.b(context), false), ConnectivityChangedReceiver.a(context), PowerStateChangedReceiver.a(context));
            }
            sl.a(context, c, str);
            slVar = c;
        }
        return slVar;
    }

    private static void a(Context context, sl slVar, String str) {
        if (aj.a((CharSequence) str)) {
            slVar.a(null);
        } else if (!aj.a(d, str)) {
            slVar.a(new l(context, str));
        }
        d = str;
    }

    private static PendingIntent b(Context context) {
        return PendingIntent.getBroadcast(context, 0, new Intent(context, LocationUpdatesAlertsReceiver.class), 134217728);
    }

    public void a() {
        if (b()) {
            this.e.g();
        } else {
            this.e.h();
        }
    }

    public void a(boolean z) {
        if (c() && this.f != null) {
            this.f.edit().putBoolean(b, z).apply();
            a();
        }
    }

    public void b(boolean z) {
        this.h = z;
        a();
    }

    public void c(boolean z) {
        this.g = z;
        a();
    }

    boolean b() {
        return c() && d() && this.h && !this.g;
    }

    boolean c() {
        return d.a("alerts_v2_experience_enabled");
    }

    boolean d() {
        return this.f != null && this.f.getBoolean(b, false);
    }

    void a(SharedPreferences sharedPreferences) {
        this.f = sharedPreferences;
    }
}
