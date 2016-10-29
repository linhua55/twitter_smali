package com.google.android.gms.internal;

import java.io.IOException;

public final class xv {
    public static final int[] a;
    public static final long[] b;
    public static final float[] c;
    public static final double[] d;
    public static final boolean[] e;
    public static final String[] f;
    public static final byte[][] g;
    public static final byte[] h;

    static {
        a = new int[0];
        b = new long[0];
        c = new float[0];
        d = new double[0];
        e = new boolean[0];
        f = new String[0];
        g = new byte[0][];
        h = new byte[0];
    }

    static int a(int i) {
        return i & 7;
    }

    static int a(int i, int i2) {
        return (i << 3) | i2;
    }

    public static boolean a(xm xmVar, int i) throws IOException {
        return xmVar.b(i);
    }

    public static int b(int i) {
        return i >>> 3;
    }

    public static final int b(xm xmVar, int i) throws IOException {
        int i2 = 1;
        int q = xmVar.q();
        xmVar.b(i);
        while (xmVar.a() == i) {
            xmVar.b(i);
            i2++;
        }
        xmVar.e(q);
        return i2;
    }
}
