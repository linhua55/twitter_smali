package defpackage;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.support.annotation.VisibleForTesting;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.o;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.d;
import com.google.android.gms.location.g;
import com.google.android.gms.location.i;
import com.twitter.library.geo.provider.param.a;

/* compiled from: Twttr */
/* renamed from: bww */
class bww implements bwy, q, g {
    @VisibleForTesting
    boolean a;
    private final bwe b;
    private final bwx c;
    private final d d;
    private final n e;
    private final bxa f;
    private LocationRequest g;

    bww(Context context, a aVar, bwx bwx, r rVar) {
        this(aVar, bwx, new o(context.getApplicationContext()).a(i.a).a(rVar).b(), i.b);
    }

    @VisibleForTesting
    bww(a aVar, bwx bwx, n nVar, d dVar) {
        this.f = new bxa();
        this.c = bwx;
        this.b = new bwe();
        this.a = false;
        this.g = this.f.a(aVar);
        this.d = dVar;
        this.e = nVar;
        this.e.a((q) this);
        this.e.b();
    }

    public Location f() {
        if (this.e.d()) {
            return this.d.a(this.e);
        }
        return null;
    }

    public void a(Bundle bundle) {
        if (this.a) {
            g();
            this.a = false;
        }
    }

    public void a(int i) {
    }

    public void a(Location location) {
        this.b.b("app:google_location_provider:first_location_change");
        if (this.c.a != null) {
            this.c.a.a(location);
        }
    }

    public void g() {
        if (this.e.d()) {
            this.b.a("app:google_location_provider:on");
            this.b.a("app:google_location_provider:first_location_change");
            a();
        } else if (this.e.e()) {
            this.a = true;
        } else {
            this.a = true;
            this.e.b();
        }
    }

    void a() {
        if (this.c.a != null) {
            this.d.a(this.e, this.g, (g) this);
        } else if (this.c.b != null) {
            this.d.a(this.e, this.g, this.c.b);
        }
    }

    public void h() {
        if (this.e.d()) {
            this.b.b("app:google_location_provider:on");
            this.b.b("app:google_location_provider:first_location_change");
            this.d.a(this.e, this);
            this.e.c();
        } else if (this.e.e()) {
            this.e.c();
        }
        this.a = false;
    }

    public void a(a aVar) {
        this.g = this.f.a(aVar);
    }
}
