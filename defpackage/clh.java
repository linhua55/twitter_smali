package defpackage;

import com.twitter.model.moments.MomentPageType;
import com.twitter.model.moments.af;
import com.twitter.model.moments.ax;
import com.twitter.model.moments.k;
import com.twitter.model.moments.u;
import com.twitter.model.moments.x;
import com.twitter.util.object.e;
import com.twitter.util.object.f;

/* compiled from: Twttr */
/* renamed from: clh */
public final class clh extends f<clf> {
    String a;
    MomentPageType b;
    x c;
    k d;
    ax e;
    ckz f;
    u g;
    af h;
    long i;

    protected /* synthetic */ Object c() {
        return d();
    }

    public clh() {
        this.a = TtmlNode.ANONYMOUS_REGION_ID;
        this.b = MomentPageType.a;
    }

    public clh a(String str) {
        this.a = (String) e.b(str, this.a);
        return this;
    }

    public clh a(MomentPageType momentPageType) {
        this.b = (MomentPageType) e.b(momentPageType, this.b);
        return this;
    }

    public clh a(x xVar) {
        this.c = xVar;
        return this;
    }

    public clh a(k kVar) {
        this.d = kVar;
        return this;
    }

    public clh a(ax axVar) {
        this.e = axVar;
        return this;
    }

    public clh a(ckz ckz) {
        this.f = ckz;
        return this;
    }

    public clh a(long j) {
        this.i = j;
        return this;
    }

    public clh a(u uVar) {
        this.g = uVar;
        return this;
    }

    public clh a(af afVar) {
        this.h = afVar;
        return this;
    }

    protected clf d() {
        return new clf();
    }
}
