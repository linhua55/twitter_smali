package defpackage;

import android.view.animation.Interpolator;

/* compiled from: Twttr */
/* renamed from: cre */
public abstract class cre implements Interpolator {
    private final float[] a;
    private final float b;

    protected cre(float[] fArr) {
        this.a = fArr;
        this.b = 1.0f / ((float) (this.a.length - 1));
    }

    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= 0.0f) {
            return 0.0f;
        }
        int min = Math.min((int) (((float) (this.a.length - 1)) * f), this.a.length - 2);
        float f2 = (f - (((float) min) * this.b)) / this.b;
        return ((this.a[min + 1] - this.a[min]) * f2) + this.a[min];
    }
}
