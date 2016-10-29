package defpackage;

import android.content.Context;
import android.location.Criteria;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import com.twitter.library.geo.provider.param.a;
import com.twitter.util.aj;

/* compiled from: Twttr */
/* renamed from: bwz */
class bwz implements LocationListener, bwy {
    private final bwe a;
    private final LocationManager b;
    private final bwx c;
    private final Looper d;
    private final bxc e;
    private Criteria f;
    private a g;
    private Location h;

    bwz(Context context, a aVar, bwx bwx) {
        this.e = new bxc();
        this.c = bwx;
        this.b = (LocationManager) context.getSystemService("location");
        this.a = new bwe();
        this.g = aVar;
        this.f = this.e.a(aVar);
        this.d = Looper.getMainLooper();
    }

    private static boolean a(Location location, Location location2) {
        if (location == null) {
            return false;
        }
        if (location2 == null) {
            return true;
        }
        boolean z;
        if (location2.getTime() - location.getTime() < 1000) {
            z = true;
        } else {
            z = false;
        }
        boolean z2;
        if (location2.getAccuracy() > location.getAccuracy()) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z && r3) {
            return true;
        }
        return false;
    }

    public Location f() {
        if (this.h != null) {
            return this.h;
        }
        String bestProvider = this.b.getBestProvider(this.f, true);
        if (bestProvider == null) {
            return this.h;
        }
        try {
            Location lastKnownLocation = this.b.getLastKnownLocation(bestProvider);
            if (bwz.a(lastKnownLocation, this.h)) {
                this.h = lastKnownLocation;
            }
        } catch (Exception e) {
        }
        return this.h;
    }

    public void onLocationChanged(Location location) {
        this.h = location;
        this.a.b("app:platform_location_provider:first_location_change");
        if (this.c.a != null) {
            this.c.a.a(location);
        }
    }

    public void onProviderDisabled(String str) {
    }

    public void onProviderEnabled(String str) {
    }

    public void onStatusChanged(String str, int i, Bundle bundle) {
    }

    public void g() {
        this.a.a("app:platform_location_provider:on");
        this.a.a("app:platform_location_provider:first_location_change");
        try {
            if (this.g.e == 1) {
                b();
            } else {
                a();
            }
        } catch (Exception e) {
        }
    }

    private void a() {
        String bestProvider = this.b.getBestProvider(this.f, true);
        if (!aj.b(bestProvider)) {
            if (this.c.a != null) {
                this.b.requestLocationUpdates(bestProvider, this.g.c, this.g.b, this, this.d);
            } else if (this.c.b != null) {
                this.b.requestLocationUpdates(bestProvider, this.g.c, this.g.b, this.c.b);
            }
        }
    }

    private void b() {
        String bestProvider = this.b.getBestProvider(this.f, true);
        if (!aj.b(bestProvider)) {
            if (this.c.a != null) {
                this.b.requestSingleUpdate(bestProvider, this, this.d);
            } else if (this.c.b != null) {
                this.b.requestSingleUpdate(bestProvider, this.c.b);
            }
        }
    }

    public void h() {
        this.a.b("app:platform_location_provider:on");
        this.a.b("app:platform_location_provider:first_location_change");
        try {
            this.b.removeUpdates(this);
        } catch (Exception e) {
        }
    }

    public void a(a aVar) {
        this.g = aVar;
        this.f = this.e.a(aVar);
    }
}
