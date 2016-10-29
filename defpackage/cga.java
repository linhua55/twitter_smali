package defpackage;

import cfl;
import cgc;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.collection.n;
import com.twitter.util.object.ObjectUtils;
import com.twitter.util.object.e;
import java.util.List;

/* compiled from: Twttr */
/* renamed from: cga */
public class cga extends cfq {
    public final int d;
    public final int e;
    public final int f;
    public final cfl<TwitterUser> g;
    public final int h;
    public final int i;
    public final cfl j;
    public final int k;
    public final int l;
    public final cfl m;

    public /* synthetic */ int compareTo(Object obj) {
        return b((cga) obj);
    }

    private cga(cgc cgc) {
        super(cgc.a(cgc), cgc.b(cgc), cgc.c(cgc));
        this.d = cgc.d(cgc);
        this.e = cgc.e(cgc);
        this.f = cgc.f(cgc);
        this.h = cgc.g(cgc);
        this.i = cgc.h(cgc);
        this.k = cgc.i(cgc);
        this.l = cgc.j(cgc);
        if (this.d == 8) {
            this.g = new cfl(n.g());
            this.j = new cfl(n.g());
        } else {
            this.g = (cfl) e.a(cgc.k(cgc));
            this.j = (cfl) e.a(cgc.l(cgc));
        }
        this.m = cgc.m(cgc);
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof cga) && a((cga) obj));
    }

    public boolean a(cga cga) {
        return this == cga || (cga != null && this.a == cga.a && this.d == cga.d && this.b == cga.b && this.c == cga.c && this.f == cga.f && this.e == cga.e && this.l == cga.l && this.k == cga.k && this.i == cga.i && this.h == cga.h && ObjectUtils.a(this.g, cga.g) && ObjectUtils.a(this.j, cga.j) && ObjectUtils.a(this.m, cga.m));
    }

    public int hashCode() {
        return ObjectUtils.a(Integer.valueOf(this.d), Long.valueOf(this.a), Long.valueOf(this.b), Long.valueOf(this.c), Integer.valueOf(this.e), Integer.valueOf(this.f), this.g, Integer.valueOf(this.h), Integer.valueOf(this.i), this.j, Integer.valueOf(this.k), Integer.valueOf(this.l), this.m);
    }

    public String toString() {
        return "event=" + this.d + ", createdAt=" + this.a + ", maxPosition=" + this.b + ", minPosition=" + this.c + ", sourcesSize=" + this.e + ", sourceType=" + this.f + ", targetsSize=" + this.h + ", targetType=" + this.i + ", targetObjectsSize=" + this.k + ", targetObjectType=" + this.l;
    }

    public long bf_() {
        return this.b;
    }

    public String bg_() {
        return String.valueOf(bf_());
    }

    public int b(cga cga) {
        return Long.valueOf(this.b).compareTo(Long.valueOf(cga.b));
    }

    public List<TwitterUser> c() {
        return this.g.a;
    }
}
