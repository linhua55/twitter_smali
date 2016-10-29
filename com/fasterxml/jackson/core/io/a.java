package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import defpackage.bdd;
import java.util.Arrays;

/* compiled from: Twttr */
public final class a {
    static final int[] a;
    static final int[] b;
    static final int[] c;
    static final int[] d;
    static final int[] e;
    static final int[] f;
    static final int[] g;
    static final int[] h;
    private static final char[] i;
    private static final byte[] j;

    static {
        int i;
        i = "0123456789ABCDEF".toCharArray();
        int length = i.length;
        j = new byte[length];
        for (i = 0; i < length; i++) {
            j[i] = (byte) i[i];
        }
        int[] iArr = new int[256];
        for (i = 0; i < 32; i++) {
            iArr[i] = -1;
        }
        iArr[34] = 1;
        iArr[92] = 1;
        a = iArr;
        Object obj = new int[a.length];
        System.arraycopy(a, 0, obj, 0, obj.length);
        for (length = 128; length < 256; length++) {
            i = (length & PsExtractor.VIDEO_STREAM) == PsExtractor.AUDIO_STREAM ? 2 : (length & PsExtractor.VIDEO_STREAM_MASK) == PsExtractor.VIDEO_STREAM ? 3 : (length & 248) == PsExtractor.VIDEO_STREAM_MASK ? 4 : -1;
            obj[length] = i;
        }
        b = obj;
        iArr = new int[256];
        Arrays.fill(iArr, -1);
        for (i = 33; i < 256; i++) {
            if (Character.isJavaIdentifierPart((char) i)) {
                iArr[i] = 0;
            }
        }
        iArr[64] = 0;
        iArr[35] = 0;
        iArr[42] = 0;
        iArr[45] = 0;
        iArr[43] = 0;
        c = iArr;
        Object obj2 = new int[256];
        System.arraycopy(c, 0, obj2, 0, obj2.length);
        Arrays.fill(obj2, 128, 128, 0);
        d = obj2;
        obj2 = new int[256];
        System.arraycopy(b, 128, obj2, 128, 128);
        Arrays.fill(obj2, 0, 32, -1);
        obj2[9] = null;
        obj2[10] = 10;
        obj2[13] = 13;
        obj2[42] = 42;
        e = obj2;
        obj2 = new int[256];
        System.arraycopy(b, 128, obj2, 128, 128);
        Arrays.fill(obj2, 0, 32, -1);
        obj2[32] = 1;
        obj2[9] = 1;
        obj2[10] = 10;
        obj2[13] = 13;
        obj2[47] = 47;
        obj2[35] = 35;
        f = obj2;
        iArr = new int[128];
        for (i = 0; i < 32; i++) {
            iArr[i] = -1;
        }
        iArr[34] = 34;
        iArr[92] = 92;
        iArr[8] = 98;
        iArr[9] = 116;
        iArr[12] = bdd.AppCompatTheme_checkboxStyle;
        iArr[10] = bdd.AppCompatTheme_spinnerStyle;
        iArr[13] = 114;
        g = iArr;
        h = new int[128];
        Arrays.fill(h, -1);
        for (i = 0; i < 10; i++) {
            h[i + 48] = i;
        }
        for (i = 0; i < 6; i++) {
            h[i + 97] = i + 10;
            h[i + 65] = i + 10;
        }
    }

    public static int[] a() {
        return a;
    }

    public static int[] b() {
        return b;
    }

    public static int[] c() {
        return c;
    }

    public static int[] d() {
        return d;
    }

    public static int[] e() {
        return e;
    }

    public static int[] f() {
        return g;
    }

    public static int a(int i) {
        return i > 127 ? -1 : h[i];
    }

    public static void a(StringBuilder stringBuilder, String str) {
        int[] iArr = g;
        char length = iArr.length;
        int length2 = str.length();
        for (int i = 0; i < length2; i++) {
            char charAt = str.charAt(i);
            if (charAt >= length || iArr[charAt] == 0) {
                stringBuilder.append(charAt);
            } else {
                stringBuilder.append('\\');
                int i2 = iArr[charAt];
                if (i2 < 0) {
                    stringBuilder.append('u');
                    stringBuilder.append('0');
                    stringBuilder.append('0');
                    stringBuilder.append(i[charAt >> 4]);
                    stringBuilder.append(i[charAt & 15]);
                } else {
                    stringBuilder.append((char) i2);
                }
            }
        }
    }

    public static char[] g() {
        return (char[]) i.clone();
    }

    public static byte[] h() {
        return (byte[]) j.clone();
    }
}
