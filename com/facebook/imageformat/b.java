package com.facebook.imageformat;

import defpackage.bn;
import defpackage.bs;
import defpackage.bx;
import defpackage.ca;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: Twttr */
public class b {
    private static final byte[] a;
    private static final byte[] b;
    private static final byte[] c;
    private static final byte[] d;
    private static final byte[] e;
    private static final byte[] f;
    private static final byte[] g;
    private static final byte[] h;
    private static final byte[] i;
    private static final byte[] j;
    private static final int k;

    private static ImageFormat a(byte[] bArr, int i) {
        bx.a((Object) bArr);
        if (c(bArr, i)) {
            return d(bArr, i);
        }
        if (e(bArr, i)) {
            return ImageFormat.JPEG;
        }
        if (f(bArr, i)) {
            return ImageFormat.PNG;
        }
        if (g(bArr, i)) {
            return ImageFormat.GIF;
        }
        if (h(bArr, i)) {
            return ImageFormat.BMP;
        }
        return ImageFormat.UNKNOWN;
    }

    private static int a(InputStream inputStream, byte[] bArr) throws IOException {
        bx.a((Object) inputStream);
        bx.a((Object) bArr);
        bx.a(bArr.length >= k);
        if (!inputStream.markSupported()) {
            return bn.a(inputStream, bArr, 0, k);
        }
        try {
            inputStream.mark(k);
            int a = bn.a(inputStream, bArr, 0, k);
            return a;
        } finally {
            inputStream.reset();
        }
    }

    public static ImageFormat a(InputStream inputStream) throws IOException {
        bx.a((Object) inputStream);
        byte[] bArr = new byte[k];
        return a(bArr, a(inputStream, bArr));
    }

    public static ImageFormat b(InputStream inputStream) {
        try {
            return a(inputStream);
        } catch (Throwable e) {
            throw ca.b(e);
        }
    }

    private static boolean a(byte[] bArr, int i, byte[] bArr2) {
        bx.a((Object) bArr);
        bx.a((Object) bArr2);
        bx.a(i >= 0);
        if (bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2 + i] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] a(String str) {
        bx.a((Object) str);
        try {
            return str.getBytes("ASCII");
        } catch (Throwable e) {
            throw new RuntimeException("ASCII not found!", e);
        }
    }

    static {
        a = a("RIFF");
        b = a("WEBP");
        c = a("VP8 ");
        d = a("VP8L");
        e = a("VP8X");
        f = new byte[]{(byte) -1, (byte) -40, (byte) -1};
        g = new byte[]{(byte) -119, (byte) 80, (byte) 78, (byte) 71, (byte) 13, (byte) 10, (byte) 26, (byte) 10};
        h = a("GIF87a");
        i = a("GIF89a");
        j = a("BM");
        k = bs.a(21, 20, f.length, g.length, 6, j.length);
    }

    private static boolean a(byte[] bArr) {
        boolean a = a(bArr, 12, e);
        boolean z;
        if ((bArr[20] & 2) == 2) {
            z = true;
        } else {
            z = false;
        }
        if (a && r2) {
            return true;
        }
        return false;
    }

    private static boolean b(byte[] bArr) {
        return a(bArr, 12, c);
    }

    private static boolean c(byte[] bArr) {
        return a(bArr, 12, d);
    }

    private static boolean d(byte[] bArr) {
        boolean a = a(bArr, 12, e);
        boolean z;
        if ((bArr[20] & 16) == 16) {
            z = true;
        } else {
            z = false;
        }
        if (a && r2) {
            return true;
        }
        return false;
    }

    private static boolean b(byte[] bArr, int i) {
        return i >= 21 && a(bArr, 12, e);
    }

    private static boolean c(byte[] bArr, int i) {
        bx.a((Object) bArr);
        if (i >= 20 && a(bArr, 0, a) && a(bArr, 8, b)) {
            return true;
        }
        return false;
    }

    private static ImageFormat d(byte[] bArr, int i) {
        bx.a(c(bArr, i));
        if (b(bArr)) {
            return ImageFormat.WEBP_SIMPLE;
        }
        if (c(bArr)) {
            return ImageFormat.WEBP_LOSSLESS;
        }
        if (!b(bArr, i)) {
            return ImageFormat.UNKNOWN;
        }
        if (a(bArr)) {
            return ImageFormat.WEBP_ANIMATED;
        }
        if (d(bArr)) {
            return ImageFormat.WEBP_EXTENDED_WITH_ALPHA;
        }
        return ImageFormat.WEBP_EXTENDED;
    }

    private static boolean e(byte[] bArr, int i) {
        return i >= f.length && a(bArr, 0, f);
    }

    private static boolean f(byte[] bArr, int i) {
        return i >= g.length && a(bArr, 0, g);
    }

    private static boolean g(byte[] bArr, int i) {
        if (i < 6) {
            return false;
        }
        if (a(bArr, 0, h) || a(bArr, 0, i)) {
            return true;
        }
        return false;
    }

    private static boolean h(byte[] bArr, int i) {
        if (i < j.length) {
            return false;
        }
        return a(bArr, 0, j);
    }
}
