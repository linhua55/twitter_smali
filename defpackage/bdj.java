package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.preference.PreferenceManager;
import android.support.v7.recyclerview.BuildConfig;
import bdh;
import bdi;
import com.twitter.config.AppConfig;
import com.twitter.config.d;
import com.twitter.library.api.al;
import com.twitter.model.core.Tweet;
import com.twitter.util.aj;
import com.twitter.util.m;
import com.twitter.util.telephony.TelephonyUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
/* renamed from: bdj */
public class bdj {
    private static bdj a;
    private final Context b;
    private boolean c;
    private boolean d;
    private boolean e;
    private boolean f;
    private al g;
    private final AtomicBoolean h;
    private final List<bdh> i;
    private bdi j;

    public static synchronized bdj a(Context context) {
        bdj bdj;
        synchronized (bdj.class) {
            if (a == null) {
                cqf.a(bdj.class);
                a = new bdj(context.getApplicationContext());
            }
            bdj = a;
        }
        return bdj;
    }

    private bdj(Context context) {
        this.h = new AtomicBoolean(false);
        this.b = context;
        this.i = new ArrayList();
    }

    public static al a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("twitter_access_config", BuildConfig.VERSION_NAME);
        if (aj.b((CharSequence) string)) {
            try {
                return new al(string);
            } catch (Throwable e) {
                bbn.a(e);
            }
        }
        return null;
    }

    public void a(bdi bdi) {
        this.j = bdi;
    }

    public void a() {
        if (this.j != null && this.h.compareAndSet(false, true)) {
            this.j.a();
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.b);
            this.c = defaultSharedPreferences.getBoolean("data_alerts_links", true);
            this.d = defaultSharedPreferences.getBoolean("data_alerts_inline", true);
            this.e = defaultSharedPreferences.getBoolean("data_alerts_gifs", true);
            this.f = defaultSharedPreferences.getBoolean("data_alerts_capsule", true);
            b(bdj.a(defaultSharedPreferences));
        }
    }

    public boolean b() {
        a();
        return d.a("twitter_access_enabled") && this.g != null && this.g.d && !TelephonyUtil.i().c();
    }

    public String c() {
        a();
        return this.g != null ? this.g.b : null;
    }

    public String d() {
        a();
        return this.g != null ? this.g.c : null;
    }

    public boolean e() {
        a();
        return this.g != null && this.g.a();
    }

    public String f() {
        a();
        return this.g != null ? this.g.j : null;
    }

    public boolean g() {
        a();
        return b() && this.g.f && this.c;
    }

    public boolean h() {
        a();
        return b() && this.f;
    }

    public boolean i() {
        a();
        return b() && this.e;
    }

    public boolean j() {
        a();
        return b() && this.g.f && this.d;
    }

    public boolean k() {
        return (this.g == null || this.g.l || !d.a("twitter_access_video_interstitial_enabled")) ? false : true;
    }

    public boolean a(Tweet tweet) {
        return !b() || (d.a("twitter_access_android_media_forward_enabled") && !tweet.L());
    }

    public void a(boolean z, boolean z2) {
        if (this.c != z) {
            this.c = z;
            Editor edit = PreferenceManager.getDefaultSharedPreferences(this.b).edit();
            edit.putBoolean("data_alerts_links", z);
            if (z2 && n()) {
                edit.putBoolean("data_charges_alerts", false);
            }
            edit.apply();
        }
    }

    public void b(boolean z, boolean z2) {
        if (this.f != z) {
            this.f = z;
            Editor edit = PreferenceManager.getDefaultSharedPreferences(this.b).edit();
            edit.putBoolean("data_alerts_capsule", z);
            if (z2 && n()) {
                edit.putBoolean("data_charges_alerts", false);
            }
            edit.apply();
        }
    }

    public void c(boolean z, boolean z2) {
        if (this.e != z) {
            this.e = z;
            Editor edit = PreferenceManager.getDefaultSharedPreferences(this.b).edit();
            edit.putBoolean("data_alerts_gifs", z);
            if (z2 && n()) {
                edit.putBoolean("data_charges_alerts", false);
            }
            edit.apply();
        }
    }

    public void d(boolean z, boolean z2) {
        if (this.d != z) {
            this.d = z;
            Editor edit = PreferenceManager.getDefaultSharedPreferences(this.b).edit();
            edit.putBoolean("data_alerts_inline", z);
            if (z2 && n()) {
                edit.putBoolean("data_charges_alerts", false);
            }
            edit.apply();
        }
    }

    private boolean n() {
        return (this.c || this.f || this.d || this.e) ? false : true;
    }

    public void a(al alVar, SharedPreferences sharedPreferences) {
        Editor edit = sharedPreferences.edit();
        if (alVar != null) {
            edit.putString("twitter_access_config", alVar.toString());
        } else {
            edit.remove("twitter_access_config");
        }
        edit.apply();
        b(alVar);
    }

    public void a(bdh bdh) {
        this.i.add(bdh);
    }

    public void e(boolean z, boolean z2) {
        for (bdh a : this.i) {
            a.a(z, z2);
        }
    }

    public void a(al alVar) {
        long b = m.b() / 1000;
        if (alVar != null) {
            this.b.getSharedPreferences("config", 0).edit().putLong("twitter_access_timestamp", b).apply();
        }
        b(alVar);
    }

    public long l() {
        return this.b.getSharedPreferences("config", 0).getLong("twitter_access_timestamp", 0);
    }

    public String m() {
        if (AppConfig.m().p()) {
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(this.b);
            if (defaultSharedPreferences.contains("twitter_access_carrier")) {
                return defaultSharedPreferences.getString("twitter_access_carrier", BuildConfig.VERSION_NAME);
            }
        }
        return null;
    }

    private void b(al alVar) {
        al alVar2 = this.g;
        this.g = alVar;
        for (bdh a : this.i) {
            a.a(alVar, alVar2);
        }
    }
}
