package defpackage;

import com.twitter.util.object.ObjectUtils;
import com.twitter.util.serialization.n;

/* compiled from: Twttr */
/* renamed from: cjs */
public class cjs {
    public static final n<cjs> a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;
    public final long f;
    public final double g;
    public final double h;
    public final double i;
    public final double j;
    public final double k;
    public final double l;
    public final double m;

    static {
        a = new cju();
    }

    public cjs(long j, long j2, double d, double d2, double d3, double d4, double d5, double d6, double d7, long j3, long j4, long j5) {
        this.b = j;
        this.c = j2;
        this.d = j3;
        this.e = j4;
        this.f = j5;
        this.g = d;
        this.h = d2;
        this.i = d3;
        this.j = d4;
        this.k = d5;
        this.l = d6;
        this.m = d7;
    }

    public boolean equals(Object obj) {
        return (obj instanceof cjs) && ((cjs) obj).b == this.b;
    }

    public int hashCode() {
        return ObjectUtils.a(this.b);
    }
}
