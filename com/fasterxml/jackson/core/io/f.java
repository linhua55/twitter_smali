package com.fasterxml.jackson.core.io;

import com.google.android.exoplayer.text.Cue;

/* compiled from: Twttr */
public final class f {
    static final String a;
    static final char[] b;
    static final char[] c;
    static final byte[] d;
    static final String[] e;
    static final String[] f;
    private static int g;
    private static int h;
    private static long i;
    private static long j;
    private static long k;
    private static long l;

    static {
        g = 1000000;
        h = 1000000000;
        i = 10000000000L;
        j = 1000;
        k = -2147483648L;
        l = 2147483647L;
        a = String.valueOf(Long.MIN_VALUE);
        b = new char[4000];
        c = new char[4000];
        int i = 0;
        for (int i2 = 0; i2 < 10; i2++) {
            char c;
            char c2 = (char) (i2 + 48);
            if (i2 == 0) {
                c = '\u0000';
            } else {
                c = c2;
            }
            int i3 = 0;
            while (i3 < 10) {
                char c3;
                char c4 = (char) (i3 + 48);
                if (i2 == 0 && i3 == 0) {
                    c3 = '\u0000';
                } else {
                    c3 = c4;
                }
                int i4 = i;
                for (i = 0; i < 10; i++) {
                    char c5 = (char) (i + 48);
                    b[i4] = c;
                    b[i4 + 1] = c3;
                    b[i4 + 2] = c5;
                    c[i4] = c2;
                    c[i4 + 1] = c4;
                    c[i4 + 2] = c5;
                    i4 += 4;
                }
                i3++;
                i = i4;
            }
        }
        d = new byte[4000];
        for (int i5 = 0; i5 < 4000; i5++) {
            d[i5] = (byte) c[i5];
        }
        e = new String[]{"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "10"};
        f = new String[]{"-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"};
    }

    public static int a(int i, char[] cArr, int i2) {
        if (i < 0) {
            if (i == Cue.TYPE_UNSET) {
                return a((long) i, cArr, i2);
            }
            int i3 = i2 + 1;
            cArr[i2] = '-';
            i = -i;
            i2 = i3;
        }
        if (i >= g) {
            Object obj = i >= h ? 1 : null;
            if (obj != null) {
                i -= h;
                if (i >= h) {
                    i -= h;
                    i3 = i2 + 1;
                    cArr[i2] = '2';
                    i2 = i3;
                } else {
                    i3 = i2 + 1;
                    cArr[i2] = '1';
                    i2 = i3;
                }
            }
            i3 = i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            int i4 = i - (i3 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            int i5 = i3 / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            int i6 = i3 - (i5 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            if (obj != null) {
                i3 = c(i5, cArr, i2);
            } else {
                i3 = b(i5, cArr, i2);
            }
            return c(i4, cArr, c(i6, cArr, i3));
        } else if (i >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            i3 = i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            return c(i - (i3 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE), cArr, b(i3, cArr, i2));
        } else if (i >= 10) {
            return b(i, cArr, i2);
        } else {
            i3 = i2 + 1;
            cArr[i2] = (char) (i + 48);
            return i3;
        }
    }

    public static int a(int i, byte[] bArr, int i2) {
        if (i < 0) {
            if (i == Cue.TYPE_UNSET) {
                return a((long) i, bArr, i2);
            }
            int i3 = i2 + 1;
            bArr[i2] = ClosedCaptionCtrl.CARRIAGE_RETURN;
            i = -i;
            i2 = i3;
        }
        if (i >= g) {
            Object obj = i >= h ? 1 : null;
            if (obj != null) {
                i -= h;
                if (i >= h) {
                    i -= h;
                    i3 = i2 + 1;
                    bArr[i2] = (byte) 50;
                    i2 = i3;
                } else {
                    i3 = i2 + 1;
                    bArr[i2] = (byte) 49;
                    i2 = i3;
                }
            }
            i3 = i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            int i4 = i - (i3 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            int i5 = i3 / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            int i6 = i3 - (i5 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE);
            if (obj != null) {
                i3 = c(i5, bArr, i2);
            } else {
                i3 = b(i5, bArr, i2);
            }
            return c(i4, bArr, c(i6, bArr, i3));
        } else if (i >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            i3 = i / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            return c(i - (i3 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE), bArr, b(i3, bArr, i2));
        } else if (i >= 10) {
            return b(i, bArr, i2);
        } else {
            i3 = i2 + 1;
            bArr[i2] = (byte) (i + 48);
            return i3;
        }
    }

    public static int a(long j, char[] cArr, int i) {
        int length;
        if (j < 0) {
            if (j > k) {
                return a((int) j, cArr, i);
            }
            if (j == Long.MIN_VALUE) {
                length = a.length();
                a.getChars(0, length, cArr, i);
                return i + length;
            }
            length = i + 1;
            cArr[i] = '-';
            j = -j;
            i = length;
        } else if (j <= l) {
            return a((int) j, cArr, i);
        }
        int a = i + a(j);
        length = a;
        while (j > l) {
            length -= 3;
            long j2 = j / j;
            c((int) (j - (j * j2)), cArr, length);
            j = j2;
        }
        int i2 = length;
        length = (int) j;
        while (length >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            int i3 = i2 - 3;
            i2 = length / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            c(length - (i2 * ExoPlayerImplInternal.MSG_SEEK_COMPLETE), cArr, i3);
            length = i2;
            i2 = i3;
        }
        b(length, cArr, i);
        return a;
    }

    public static int a(long j, byte[] bArr, int i) {
        int length;
        int i2;
        int i3;
        if (j < 0) {
            if (j > k) {
                return a((int) j, bArr, i);
            }
            if (j == Long.MIN_VALUE) {
                length = a.length();
                i2 = 0;
                i3 = i;
                while (i2 < length) {
                    i = i3 + 1;
                    bArr[i3] = (byte) a.charAt(i2);
                    i2++;
                    i3 = i;
                }
                return i3;
            }
            i2 = i + 1;
            bArr[i] = ClosedCaptionCtrl.CARRIAGE_RETURN;
            j = -j;
            i = i2;
        } else if (j <= l) {
            return a((int) j, bArr, i);
        }
        i3 = i + a(j);
        i2 = i3;
        while (j > l) {
            i2 -= 3;
            long j2 = j / j;
            c((int) (j - (j * j2)), bArr, i2);
            j = j2;
        }
        length = i2;
        i2 = (int) j;
        while (i2 >= ExoPlayerImplInternal.MSG_SEEK_COMPLETE) {
            int i4 = length - 3;
            length = i2 / ExoPlayerImplInternal.MSG_SEEK_COMPLETE;
            c(i2 - (length * ExoPlayerImplInternal.MSG_SEEK_COMPLETE), bArr, i4);
            i2 = length;
            length = i4;
        }
        b(i2, bArr, i);
        return i3;
    }

    private static int b(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = b[i3];
        if (c != '\u0000') {
            i3 = i2 + 1;
            cArr[i2] = c;
            i2 = i3;
        }
        int i5 = i4 + 1;
        char c2 = b[i4];
        if (c2 != '\u0000') {
            i3 = i2 + 1;
            cArr[i2] = c2;
            i2 = i3;
        }
        i3 = i2 + 1;
        cArr[i2] = b[i5];
        return i3;
    }

    private static int b(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i3 + 1;
        char c = b[i3];
        if (c != '\u0000') {
            i3 = i2 + 1;
            bArr[i2] = (byte) c;
            i2 = i3;
        }
        int i5 = i4 + 1;
        char c2 = b[i4];
        if (c2 != '\u0000') {
            i3 = i2 + 1;
            bArr[i2] = (byte) c2;
            i2 = i3;
        }
        i3 = i2 + 1;
        bArr[i2] = (byte) b[i5];
        return i3;
    }

    private static int c(int i, char[] cArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        cArr[i2] = c[i3];
        i3 = i4 + 1;
        int i6 = i5 + 1;
        cArr[i4] = c[i5];
        i4 = i3 + 1;
        cArr[i3] = c[i6];
        return i4;
    }

    private static int c(int i, byte[] bArr, int i2) {
        int i3 = i << 2;
        int i4 = i2 + 1;
        int i5 = i3 + 1;
        bArr[i2] = d[i3];
        i3 = i4 + 1;
        int i6 = i5 + 1;
        bArr[i4] = d[i5];
        i4 = i3 + 1;
        bArr[i3] = d[i6];
        return i4;
    }

    private static int a(long j) {
        int i = 10;
        for (long j2 = i; j >= j2 && i != 19; j2 = (j2 << 1) + (j2 << 3)) {
            i++;
        }
        return i;
    }
}
