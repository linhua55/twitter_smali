package com.twitter.util.math;

/* compiled from: Twttr */
public class a {
    public static int a(int i, int i2, int i3) {
        return Math.min(Math.max(i, i2), i3);
    }

    public static long a(long j, long j2, long j3) {
        return Math.min(Math.max(j, j2), j3);
    }

    public static float a(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    public static boolean b(int i, int i2, int i3) {
        return Math.abs(i - i2) <= Math.abs(i3);
    }

    public static float a(float f, float f2, float f3, float f4, float f5) {
        if (f2 + f < f4) {
            return f4 - f2;
        }
        if (f3 + f > f5) {
            return f5 - f3;
        }
        return f;
    }

    public static float a(float f, float f2, float f3, boolean z) {
        if (z) {
            if (f3 >= 1.0f) {
                return f2;
            }
            if (f3 <= 0.0f) {
                return f;
            }
        }
        return ((1.0f - f3) * f) + (f2 * f3);
    }

    public static float a(float f, int i) {
        return f > ((float) i) ? (float) (Math.round(f / ((float) i)) * i) : f;
    }

    public static int a(int i, int i2) {
        return ((i % i2) + i2) % i2;
    }

    public static float a(float f, float f2) {
        return (float) Math.sqrt((double) ((f * f) + (f2 * f2)));
    }

    public static float b(float f, float f2, float f3) {
        return (((f * f3) / 2.0f) + f2) * f;
    }

    public static float c(float f, float f2, float f3) {
        if (f == 0.0f) {
            return 0.0f;
        }
        if (f3 != 0.0f) {
            float f4 = (f2 * f2) + ((2.0f * f3) * f);
            if (f4 < 0.0f) {
                return Float.NaN;
            }
            f4 = (float) Math.sqrt((double) f4);
            float f5 = (f4 - f2) / f3;
            f4 = (-(f4 + f2)) / f3;
            if (f5 < 0.0f && f4 < 0.0f) {
                return Float.NaN;
            }
            if (f5 < 0.0f || f4 < 0.0f) {
                return Math.max(f5, f4);
            }
            return Math.min(f5, f4);
        } else if (f2 != 0.0f) {
            return Math.abs(f / f2);
        } else {
            return Float.NaN;
        }
    }
}
