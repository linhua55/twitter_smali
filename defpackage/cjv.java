package defpackage;

import ckl;
import com.twitter.util.math.Size;

/* compiled from: Twttr */
/* renamed from: cjv */
public class cjv {
    public final long a;
    public final long b;
    public final ckl c;
    public final float d;
    private final float[] e;
    private final double f;

    public cjv(long j, long j2, float[] fArr, ckl ckl, double d) {
        this.a = j;
        this.b = j2;
        this.c = ckl;
        this.e = fArr;
        this.f = d;
        this.d = ckq.a(fArr);
    }

    public static cjv a(ckl ckl, cjs cjs, long j) {
        return new cjv(cjs.b, j, new float[]{0.0f, 0.0f, 1.0f, (float) cjs.h, (float) cjs.j, (float) cjs.l, (float) cjs.i, (float) cjs.k, (float) cjs.m}, ckl, cjs.g);
    }

    public Size a(int i) {
        return ckq.a(this.e, (float) i, this.f);
    }

    public float b(int i) {
        return ckq.a(this.e, (float) i);
    }

    public float c(int i) {
        return ckq.b(this.e, (float) i);
    }
}
