package com.twitter.android.geo;

import android.content.Context;
import android.location.LocationManager;
import android.preference.PreferenceManager;
import bex;
import bvt;
import com.twitter.android.lf;
import com.twitter.library.api.UserSettings;
import com.twitter.library.client.Session;
import com.twitter.library.client.az;
import com.twitter.library.client.l;

/* compiled from: Twttr */
public final class a implements bvt {
    private final lf a;
    private final Context b;

    public a(Context context, lf lfVar) {
        this.b = context;
        this.a = lfVar;
    }

    public boolean a() {
        return d() && e() && f();
    }

    public boolean b() {
        return d() && e() && f();
    }

    public boolean c() {
        return d() && e() && f();
    }

    public boolean a(Session session) {
        return d() && b(session) && e() && f();
    }

    public boolean d() {
        return PreferenceManager.getDefaultSharedPreferences(this.b).getBoolean("location", false);
    }

    public boolean b(Session session) {
        if (session == null) {
            return false;
        }
        UserSettings j = session.j();
        if (j == null || !j.g()) {
            return false;
        }
        return true;
    }

    public boolean c(Session session) {
        String e = session.e();
        if (e == null) {
            return false;
        }
        return new l(this.b, e).getBoolean("location_enabled", false);
    }

    public void a(Session session, boolean z) {
        String e = session.e();
        if (e != null) {
            new l(this.b, e).a().a("location_enabled", z).apply();
        }
    }

    public boolean e() {
        LocationManager locationManager = (LocationManager) this.b.getSystemService("location");
        return locationManager.isProviderEnabled("gps") || locationManager.isProviderEnabled("network");
    }

    public boolean f() {
        return this.a.a(this.b, new String[]{"android.permission.ACCESS_FINE_LOCATION"});
    }

    public void a(boolean z) {
        PreferenceManager.getDefaultSharedPreferences(this.b).edit().putBoolean("location", z).apply();
    }

    public boolean b(Session session, boolean z) {
        if (session == null) {
            return false;
        }
        UserSettings j = session.j();
        if (j == null) {
            return false;
        }
        if (j.g() != z) {
            j.c = z;
            az.a(this.b).a(bex.a(this.b, session, j, false, null));
        }
        return true;
    }
}
