package defpackage;

import android.content.Context;
import android.view.ViewConfiguration;

/* compiled from: Twttr */
/* renamed from: ddc */
public class ddc {
    private static float a;
    private static final float b;

    static {
        a = (float) (Math.log(0.78d) / Math.log(0.9d));
        b = ViewConfiguration.getScrollFriction();
    }

    public static float a(float f, float f2) {
        return (386.0878f * f) * f2;
    }

    public static double b(float f, float f2) {
        return Math.log((double) ((0.35f * Math.abs(f2)) / (b * f)));
    }

    public static double a(Context context, float f) {
        float a = ddc.a(context.getResources().getDisplayMetrics().density * 160.0f, 0.84f);
        return ((double) (a * b)) * Math.exp(ddc.b(a, f) * (((double) a) / (((double) a) - 1.0d)));
    }
}
