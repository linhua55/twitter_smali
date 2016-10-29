package defpackage;

import cjy;
import cjz;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cjw */
public class cjw implements Comparable<cjw> {
    public static final n<cjw> a;
    public final long b;
    public final String c;
    public final String d;
    public final String e;
    public final String f;
    public final long g;
    public final long h;
    public final long i;
    public final ckl j;
    public final long k;
    public final String l;
    public final long m;
    public final long n;
    public final long o;
    public final boolean p;

    public /* synthetic */ int compareTo(Object obj) {
        return a((cjw) obj);
    }

    static {
        a = new cjz(null);
    }

    private cjw(cjy cjy) {
        this.j = cjy.a(cjy);
        this.h = cjy.b(cjy);
        this.i = cjy.c(cjy);
        this.g = cjy.d(cjy);
        this.d = cjy.e(cjy);
        this.e = cjy.f(cjy);
        this.c = cjy.g(cjy);
        this.f = cjy.h(cjy);
        this.b = cjy.i(cjy);
        this.k = cjy.j(cjy);
        this.l = cjy.k(cjy);
        this.m = cjy.l(cjy);
        this.n = cjy.m(cjy);
        this.o = cjy.n(cjy);
        this.p = cjy.o(cjy);
    }

    public int a(cjw cjw) {
        if (this.o == cjw.o) {
            return 0;
        }
        return this.o < cjw.o ? -1 : 1;
    }
}
