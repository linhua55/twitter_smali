package defpackage;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import bvw;
import bwu;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.r;
import com.twitter.library.geo.provider.param.a;
import com.twitter.library.platform.c;

/* compiled from: Twttr */
/* renamed from: bwt */
public class bwt implements bwy, r {
    private final Context a;
    private final a b;
    private final bwx c;
    private bwu d;
    private boolean e;
    private boolean f;
    private bwy g;

    public bwt(Context context, a aVar, bvw bvw, boolean z) {
        this(context, aVar, new bwx(bvw), z);
    }

    public bwt(Context context, a aVar, PendingIntent pendingIntent, boolean z) {
        this(context, aVar, new bwx(pendingIntent), z);
    }

    private bwt(Context context, a aVar, bwx bwx, boolean z) {
        this.d = bwu.a;
        this.e = true;
        this.b = aVar;
        this.a = context;
        this.c = bwx;
        this.g = c(z);
    }

    public void a(bwu bwu) {
        this.d = bwu;
    }

    private bwy c(boolean z) {
        if (z) {
            return bwc.a(this.a);
        }
        if (this.e && c.a(this.a)) {
            return new bww(this.a, this.b, this.c, (r) this);
        }
        return new bwz(this.a, this.b, this.c);
    }

    public Location f() {
        return this.g.f();
    }

    public void g() {
        this.g.g();
    }

    public void h() {
        this.g.h();
    }

    public void a(a aVar) {
        this.g.a(aVar);
    }

    public void a(ConnectionResult connectionResult) {
        this.e = false;
        a();
    }

    public void a(bwy bwy) {
        if (this.g != bwy) {
            this.g.h();
            this.d.h();
            this.g = bwy;
            this.d.i();
        }
    }

    public void a(boolean z) {
        if (this.f != z) {
            this.f = z;
            a();
        }
    }

    public void b(boolean z) {
        if (this.e != z) {
            this.e = z;
            a();
        }
    }

    private void a() {
        a(c(this.f));
    }
}
