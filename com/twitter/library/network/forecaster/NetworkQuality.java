package com.twitter.library.network.forecaster;

import com.twitter.util.units.bitrate.KilobitsPerSecond;

/* compiled from: Twttr */
public enum NetworkQuality {
    NONE,
    POOR,
    GOOD,
    GREAT;
    
    public static final NetworkQuality e;
    private static final double[] f;
    private static final double[] g;

    static {
        e = GOOD;
        f = new double[]{100.0d, 300.0d};
        g = new double[]{300.0d, 1000.0d};
    }

    public boolean a(NetworkQuality networkQuality) {
        return compareTo(networkQuality) <= 0;
    }

    public static NetworkQuality a(boolean z, KilobitsPerSecond kilobitsPerSecond, NetworkQuality networkQuality) {
        return a(z, kilobitsPerSecond, networkQuality, f);
    }

    public static NetworkQuality b(boolean z, KilobitsPerSecond kilobitsPerSecond, NetworkQuality networkQuality) {
        return a(z, kilobitsPerSecond, networkQuality, g);
    }

    public static NetworkQuality a(NetworkQuality networkQuality, NetworkQuality networkQuality2) {
        return values()[Math.min(networkQuality.ordinal(), networkQuality2.ordinal())];
    }

    private static NetworkQuality a(boolean z, KilobitsPerSecond kilobitsPerSecond, NetworkQuality networkQuality, double[] dArr) {
        if (!z) {
            return NONE;
        }
        int a = a(kilobitsPerSecond.doubleValue(), a(networkQuality, dArr));
        if (a == -1) {
            return GREAT;
        }
        return values()[a + 1];
    }

    private static double[] a(NetworkQuality networkQuality, double[] dArr) {
        double[] dArr2 = (double[]) dArr.clone();
        int ordinal = networkQuality.ordinal() - 1;
        if (ordinal - 1 >= 0) {
            int i = ordinal - 1;
            dArr2[i] = dArr2[i] * 0.9d;
        }
        if (ordinal >= 0 && ordinal < dArr2.length) {
            dArr2[ordinal] = dArr2[ordinal] * 1.1d;
        }
        return dArr2;
    }

    private static int a(double d, double[] dArr) {
        for (int i = 0; i < dArr.length; i++) {
            if (d <= dArr[i]) {
                return i;
            }
        }
        return -1;
    }
}
