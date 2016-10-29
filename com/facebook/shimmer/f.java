package com.facebook.shimmer;

import com.facebook.shimmer.ShimmerFrameLayout.MaskAngle;
import com.facebook.shimmer.ShimmerFrameLayout.MaskShape;
import com.google.android.exoplayer.util.extensions.Buffer;

/* compiled from: Twttr */
class f {
    public MaskAngle a;
    public float b;
    public float c;
    public int d;
    public int e;
    public float f;
    public float g;
    public float h;
    public MaskShape i;

    private f() {
    }

    public int a(int i) {
        return this.d > 0 ? this.d : (int) (((float) i) * this.g);
    }

    public int b(int i) {
        return this.e > 0 ? this.e : (int) (((float) i) * this.h);
    }

    public int[] a() {
        switch (e.a[this.i.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new int[]{-16777216, -16777216, 0};
            default:
                return new int[]{0, -16777216, -16777216, 0};
        }
    }

    public float[] b() {
        switch (e.a[this.i.ordinal()]) {
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                return new float[]{0.0f, Math.min(this.f, 1.0f), Math.min(this.f + this.c, 1.0f)};
            default:
                return new float[]{Math.max(((1.0f - this.f) - this.c) / 2.0f, 0.0f), Math.max((1.0f - this.f) / 2.0f, 0.0f), Math.min((this.f + 1.0f) / 2.0f, 1.0f), Math.min(((this.f + 1.0f) + this.c) / 2.0f, 1.0f)};
        }
    }
}
