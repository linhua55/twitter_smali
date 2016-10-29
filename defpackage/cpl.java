package defpackage;

import android.graphics.Matrix;
import android.graphics.Rect;
import android.support.annotation.VisibleForTesting;
import com.twitter.util.math.b;

/* compiled from: Twttr */
/* renamed from: cpl */
public class cpl {
    private final Matrix a;
    private final float[] b;

    public cpl() {
        this(new Matrix());
    }

    @VisibleForTesting
    cpl(Matrix matrix) {
        this.b = new float[9];
        this.a = matrix;
    }

    public Matrix a(int i, int i2, int i3, int i4, Rect rect, float f) {
        this.a.getValues(this.b);
        float f2 = ((float) i3) / ((float) i4);
        int i5 = (int) (((float) i) / f2);
        int a = (int) b.a((float) i5, (float) rect.height(), f, false);
        f2 = ((float) ((int) (f2 * ((float) a)))) / ((float) i3);
        float f3 = ((float) a) / ((float) i4);
        i5 = (i2 - i5) / 2;
        float a2 = b.a(0.0f, (float) rect.left, f, false);
        float a3 = b.a((float) i5, (float) rect.top, f, false);
        this.a.setScale(f2, f3);
        this.a.postTranslate(a2, a3);
        return this.a;
    }
}
