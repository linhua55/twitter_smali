package com.twitter.android.av;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.preference.PreferenceManager;
import bdj;
import com.twitter.library.network.forecaster.NetworkQuality;
import com.twitter.library.network.forecaster.b;
import com.twitter.library.network.forecaster.h;
import com.twitter.util.telephony.TelephonyUtil;
import com.twitter.util.z;

/* compiled from: Twttr */
public class t implements OnSharedPreferenceChangeListener, w, z<h> {
    boolean a;
    boolean b;
    boolean c;
    boolean d;
    private final Context e;
    private final SharedPreferences f;
    private final b g;
    private final TelephonyUtil h;
    private boolean i;

    public t(Context context) {
        this(context, b.a(), TelephonyUtil.i());
    }

    t(Context context, b bVar, TelephonyUtil telephonyUtil) {
        this.e = context;
        this.a = p.a();
        this.g = bVar;
        this.h = telephonyUtil;
        this.f = PreferenceManager.getDefaultSharedPreferences(context);
        this.f.registerOnSharedPreferenceChangeListener(this);
        a(this.f);
        this.g.a(this);
        this.b = this.g.b().a(NetworkQuality.POOR);
        this.i = bdj.a(this.e).b();
    }

    public boolean a() {
        return (!this.a || this.i || this.b || this.c || (this.d && !this.h.c())) ? false : true;
    }

    public void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("video_autoplay".equals(str)) {
            a(sharedPreferences);
        }
        this.i = bdj.a(this.e).b();
    }

    public void b() {
        this.f.unregisterOnSharedPreferenceChangeListener(this);
        this.g.b(this);
    }

    private void a(SharedPreferences sharedPreferences) {
        String string = sharedPreferences.getString("video_autoplay", u.a(this.g));
        this.c = "never".equals(string);
        this.d = "wifi_only".equals(string);
    }

    public void c() {
        this.a = p.a();
        this.i = bdj.a(this.e).b();
    }

    public void a(h hVar) {
        this.b = hVar.b.a(NetworkQuality.POOR);
        this.i = bdj.a(this.e).b();
    }
}
