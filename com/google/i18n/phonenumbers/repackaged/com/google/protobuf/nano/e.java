package com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano;

import java.io.IOException;

/* compiled from: Twttr */
public final class e {
    public static final int[] a;
    public static final long[] b;
    public static final float[] c;
    public static final double[] d;
    public static final boolean[] e;
    public static final String[] f;
    public static final byte[][] g;
    public static final byte[] h;

    static int a(int i) {
        return i & 7;
    }

    public static int b(int i) {
        return i >>> 3;
    }

    static int a(int i, int i2) {
        return (i << 3) | i2;
    }

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

    public static boolean a(a aVar, int i) throws IOException {
        return aVar.b(i);
    }

    public static final int b(a aVar, int i) throws IOException {
        int i2 = 1;
        int j = aVar.j();
        aVar.b(i);
        while (aVar.a() == i) {
            aVar.b(i);
            i2++;
        }
        aVar.e(j);
        return i2;
    }
}
