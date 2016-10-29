package com.twitter.util.ui;

import android.graphics.Color;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import com.twitter.util.math.a;

/* compiled from: Twttr */
public class h {
    public static int a(int i, float f) {
        return a(i, ViewCompat.MEASURED_STATE_MASK, f);
    }

    public static int b(int i, float f) {
        return a(i, -1, f);
    }

    public static int a(int i) {
        return Math.round(((float) (((Color.red(i) * 299) + (Color.green(i) * 587)) + (Color.blue(i) * 114))) / 1000.0f);
    }

    public static int a(int i, int i2, float f) {
        float f2 = 1.0f - f;
        return Color.rgb((int) ((((float) Color.red(i)) * f2) + (((float) Color.red(i2)) * f)), (int) ((((float) Color.green(i)) * f2) + (((float) Color.green(i2)) * f)), (int) ((f2 * ((float) Color.blue(i))) + (((float) Color.blue(i2)) * f)));
    }

    public static int b(int i, int i2, float f) {
        return a(i, i2, f, true);
    }

    public static int c(int i, int i2, float f) {
        return a(i, i2, f, false);
    }

    private static int a(int i, int i2, float f, boolean z) {
        if (f >= 1.0f) {
            return i2;
        }
        if (f <= 0.0f) {
            return i;
        }
        double d = (((double) f) * 3.141592653589793d) * 0.5d;
        return d(i, i2, (float) (z ? 1.0d - Math.cos(d) : Math.sin(d)));
    }

    public static int d(int i, int i2, float f) {
        if (f >= 1.0f) {
            return i2;
        }
        if (f <= 0.0f) {
            return i;
        }
        float[] fArr = new float[3];
        float[] fArr2 = new float[3];
        int alpha = Color.alpha(i);
        int alpha2 = Color.alpha(i2);
        float[] fArr3 = new float[3];
        Color.colorToHSV(i, fArr);
        Color.colorToHSV(i2, fArr2);
        for (int i3 = 0; i3 < 3; i3++) {
            fArr3[i3] = a.a(fArr[i3], fArr2[i3], f, true);
        }
        return Color.HSVToColor((int) a.a((float) alpha, (float) alpha2, f, true), fArr3);
    }

    public static int c(int i, float f) {
        return a(i) >= AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS ? a(i, f) : b(i, f);
    }

    public static int a(n nVar, n nVar2) {
        return Math.abs(a(nVar.a()) - a(nVar2.a()));
    }

    public static float a(n nVar) {
        float[] b = nVar.b();
        return b[2] * b[1];
    }

    public static int a(String str, int i) {
        if (str != null) {
            try {
                if (str.length() == 4 || str.length() == 5) {
                    char[] cArr = new char[((str.length() * 2) - 1)];
                    cArr[0] = str.charAt(0);
                    for (int i2 = 1; i2 < str.length(); i2++) {
                        cArr[(i2 * 2) - 1] = str.charAt(i2);
                        cArr[i2 * 2] = str.charAt(i2);
                    }
                    str = new String(cArr);
                }
            } catch (Exception e) {
            }
        }
        i = Color.parseColor(str);
        return i;
    }

    public static ColorMatrixColorFilter d(int i, float f) {
        return new ColorMatrixColorFilter(e(i, f));
    }

    static ColorMatrix e(int i, float f) {
        ColorMatrix colorMatrix = new ColorMatrix();
        colorMatrix.setSaturation(f);
        float[] array = colorMatrix.getArray();
        colorMatrix.set(new float[]{(array[0] * ((float) Color.red(i))) / 255.0f, array[1], array[2], array[3], array[4], array[5], (array[6] * ((float) Color.green(i))) / 255.0f, array[7], array[8], array[9], array[10], array[11], (array[12] * ((float) Color.blue(i))) / 255.0f, array[13], array[14], array[15], array[16], array[17], array[18], array[19]});
        return colorMatrix;
    }

    public static int f(int i, float f) {
        int i2 = (int) (255.0f * f);
        int i3 = 255 - i2;
        return Color.argb(Color.alpha(i), ((Color.red(i) * i3) / MotionEventCompat.ACTION_MASK) + i2, ((Color.green(i) * i3) / MotionEventCompat.ACTION_MASK) + i2, i2 + ((i3 * Color.blue(i)) / MotionEventCompat.ACTION_MASK));
    }

    public static int a(int i, int i2) {
        return Color.argb(i2, Color.red(i), Color.green(i), Color.blue(i));
    }

    public static int g(int i, float f) {
        return a(i, (int) (255.0f * f));
    }
}
