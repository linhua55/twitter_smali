package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.b;
import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.google.android.exoplayer.util.NalUnitUtil;
import java.lang.ref.SoftReference;

/* compiled from: Twttr */
public final class c {
    protected static final ThreadLocal<SoftReference<c>> a;
    private static final char[] d;
    private static final byte[] e;
    protected b b;
    protected final char[] c;

    static {
        d = a.g();
        e = a.h();
        a = new ThreadLocal();
    }

    public c() {
        this.c = new char[6];
        this.c[0] = '\\';
        this.c[2] = '0';
        this.c[3] = '0';
    }

    public static c a() {
        SoftReference softReference = (SoftReference) a.get();
        c cVar = softReference == null ? null : (c) softReference.get();
        if (cVar != null) {
            return cVar;
        }
        cVar = new c();
        a.set(new SoftReference(cVar));
        return cVar;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public byte[] a(java.lang.String r12) {
        /*
        r11 = this;
        r9 = 127; // 0x7f float:1.78E-43 double:6.27E-322;
        r5 = 0;
        r0 = r11.b;
        if (r0 != 0) goto L_0x000f;
    L_0x0007:
        r0 = new com.fasterxml.jackson.core.util.b;
        r1 = 0;
        r0.<init>(r1);
        r11.b = r0;
    L_0x000f:
        r7 = r12.length();
        r1 = r0.c();
        r2 = r5;
        r3 = r5;
    L_0x0019:
        if (r3 >= r7) goto L_0x0056;
    L_0x001b:
        r6 = com.fasterxml.jackson.core.io.a.f();
    L_0x001f:
        r8 = r12.charAt(r3);
        if (r8 > r9) goto L_0x0029;
    L_0x0025:
        r4 = r6[r8];
        if (r4 == 0) goto L_0x0045;
    L_0x0029:
        r4 = r1.length;
        if (r2 < r4) goto L_0x0031;
    L_0x002c:
        r1 = r0.d();
        r2 = r5;
    L_0x0031:
        r4 = r3 + 1;
        r8 = r12.charAt(r3);
        if (r8 > r9) goto L_0x005d;
    L_0x0039:
        r1 = r6[r8];
        r2 = r11.a(r8, r1, r0, r2);
        r1 = r0.e();
        r3 = r4;
        goto L_0x0019;
    L_0x0045:
        r4 = r1.length;
        if (r2 < r4) goto L_0x010e;
    L_0x0048:
        r1 = r0.d();
        r4 = r5;
    L_0x004d:
        r2 = r4 + 1;
        r8 = (byte) r8;
        r1[r4] = r8;
        r3 = r3 + 1;
        if (r3 < r7) goto L_0x001f;
    L_0x0056:
        r0 = r11.b;
        r0 = r0.b(r2);
        return r0;
    L_0x005d:
        r3 = 2047; // 0x7ff float:2.868E-42 double:1.0114E-320;
        if (r8 > r3) goto L_0x0082;
    L_0x0061:
        r3 = r2 + 1;
        r6 = r8 >> 6;
        r6 = r6 | 192;
        r6 = (byte) r6;
        r1[r2] = r6;
        r2 = r8 & 63;
        r2 = r2 | 128;
        r10 = r2;
        r2 = r1;
        r1 = r10;
    L_0x0071:
        r6 = r2.length;
        if (r3 < r6) goto L_0x0079;
    L_0x0074:
        r2 = r0.d();
        r3 = r5;
    L_0x0079:
        r6 = r3 + 1;
        r1 = (byte) r1;
        r2[r3] = r1;
        r1 = r2;
        r3 = r4;
        r2 = r6;
        goto L_0x0019;
    L_0x0082:
        r3 = 55296; // 0xd800 float:7.7486E-41 double:2.732E-319;
        if (r8 < r3) goto L_0x008c;
    L_0x0087:
        r3 = 57343; // 0xdfff float:8.0355E-41 double:2.8331E-319;
        if (r8 <= r3) goto L_0x00b0;
    L_0x008c:
        r3 = r2 + 1;
        r6 = r8 >> 12;
        r6 = r6 | 224;
        r6 = (byte) r6;
        r1[r2] = r6;
        r2 = r1.length;
        if (r3 < r2) goto L_0x010c;
    L_0x0098:
        r1 = r0.d();
        r2 = r5;
    L_0x009d:
        r3 = r2 + 1;
        r6 = r8 >> 6;
        r6 = r6 & 63;
        r6 = r6 | 128;
        r6 = (byte) r6;
        r1[r2] = r6;
        r2 = r8 & 63;
        r2 = r2 | 128;
        r10 = r2;
        r2 = r1;
        r1 = r10;
        goto L_0x0071;
    L_0x00b0:
        r3 = 56319; // 0xdbff float:7.892E-41 double:2.78253E-319;
        if (r8 <= r3) goto L_0x00b8;
    L_0x00b5:
        a(r8);
    L_0x00b8:
        if (r4 < r7) goto L_0x00bd;
    L_0x00ba:
        a(r8);
    L_0x00bd:
        r6 = r4 + 1;
        r3 = r12.charAt(r4);
        r4 = a(r8, r3);
        r3 = 1114111; // 0x10ffff float:1.561202E-39 double:5.50444E-318;
        if (r4 <= r3) goto L_0x00cf;
    L_0x00cc:
        a(r4);
    L_0x00cf:
        r3 = r2 + 1;
        r8 = r4 >> 18;
        r8 = r8 | 240;
        r8 = (byte) r8;
        r1[r2] = r8;
        r2 = r1.length;
        if (r3 < r2) goto L_0x010a;
    L_0x00db:
        r1 = r0.d();
        r2 = r5;
    L_0x00e0:
        r3 = r2 + 1;
        r8 = r4 >> 12;
        r8 = r8 & 63;
        r8 = r8 | 128;
        r8 = (byte) r8;
        r1[r2] = r8;
        r2 = r1.length;
        if (r3 < r2) goto L_0x0108;
    L_0x00ee:
        r1 = r0.d();
        r2 = r5;
    L_0x00f3:
        r3 = r2 + 1;
        r8 = r4 >> 6;
        r8 = r8 & 63;
        r8 = r8 | 128;
        r8 = (byte) r8;
        r1[r2] = r8;
        r2 = r4 & 63;
        r2 = r2 | 128;
        r4 = r6;
        r10 = r1;
        r1 = r2;
        r2 = r10;
        goto L_0x0071;
    L_0x0108:
        r2 = r3;
        goto L_0x00f3;
    L_0x010a:
        r2 = r3;
        goto L_0x00e0;
    L_0x010c:
        r2 = r3;
        goto L_0x009d;
    L_0x010e:
        r4 = r2;
        goto L_0x004d;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.io.c.a(java.lang.String):byte[]");
    }

    public byte[] b(String str) {
        int i;
        b bVar = this.b;
        if (bVar == null) {
            bVar = new b(null);
            this.b = bVar;
        }
        int length = str.length();
        byte[] c = bVar.c();
        int length2 = c.length;
        int i2 = 0;
        int i3 = 0;
        loop0:
        while (i3 < length) {
            int i4;
            int i5 = i3 + 1;
            i3 = str.charAt(i3);
            int i6 = length2;
            byte[] bArr = c;
            int i7 = i2;
            i2 = i6;
            while (i3 <= 127) {
                if (i7 >= i2) {
                    bArr = bVar.d();
                    i2 = bArr.length;
                    i7 = 0;
                }
                i4 = i7 + 1;
                bArr[i7] = (byte) i3;
                if (i5 >= length) {
                    i = i4;
                    break loop0;
                }
                i7 = i5 + 1;
                i3 = str.charAt(i5);
                i5 = i7;
                i7 = i4;
            }
            if (i7 >= i2) {
                bArr = bVar.d();
                i2 = bArr.length;
                i4 = 0;
            } else {
                i4 = i7;
            }
            if (i3 < 2048) {
                i7 = i4 + 1;
                bArr[i4] = (byte) ((i3 >> 6) | PsExtractor.AUDIO_STREAM);
                i4 = i3;
                i3 = i5;
            } else if (i3 < 55296 || i3 > 57343) {
                i7 = i4 + 1;
                bArr[i4] = (byte) ((i3 >> 12) | PsExtractor.VIDEO_STREAM);
                if (i7 >= i2) {
                    bArr = bVar.d();
                    i2 = bArr.length;
                    i7 = 0;
                }
                i4 = i7 + 1;
                bArr[i7] = (byte) (((i3 >> 6) & 63) | 128);
                i7 = i4;
                i4 = i3;
                i3 = i5;
            } else {
                if (i3 > 56319) {
                    a(i3);
                }
                if (i5 >= length) {
                    a(i3);
                }
                int i8 = i5 + 1;
                i3 = a(i3, str.charAt(i5));
                if (i3 > 1114111) {
                    a(i3);
                }
                i7 = i4 + 1;
                bArr[i4] = (byte) ((i3 >> 18) | PsExtractor.VIDEO_STREAM_MASK);
                if (i7 >= i2) {
                    bArr = bVar.d();
                    i2 = bArr.length;
                    i7 = 0;
                }
                i4 = i7 + 1;
                bArr[i7] = (byte) (((i3 >> 12) & 63) | 128);
                if (i4 >= i2) {
                    bArr = bVar.d();
                    i2 = bArr.length;
                    i7 = 0;
                } else {
                    i7 = i4;
                }
                i4 = i7 + 1;
                bArr[i7] = (byte) (((i3 >> 6) & 63) | 128);
                i7 = i4;
                i4 = i3;
                i3 = i8;
            }
            if (i7 >= i2) {
                bArr = bVar.d();
                i2 = bArr.length;
                i7 = 0;
            }
            i5 = i7 + 1;
            bArr[i7] = (byte) ((i4 & 63) | 128);
            c = bArr;
            length2 = i2;
            i2 = i5;
        }
        i = i2;
        return this.b.b(i);
    }

    private int a(int i, int i2, b bVar, int i3) {
        bVar.c(i3);
        bVar.a(92);
        if (i2 < 0) {
            bVar.a(117);
            if (i > NalUnitUtil.EXTENDED_SAR) {
                int i4 = i >> 8;
                bVar.a(e[i4 >> 4]);
                bVar.a(e[i4 & 15]);
                i &= NalUnitUtil.EXTENDED_SAR;
            } else {
                bVar.a(48);
                bVar.a(48);
            }
            bVar.a(e[i >> 4]);
            bVar.a(e[i & 15]);
        } else {
            bVar.a((byte) i2);
        }
        return bVar.f();
    }

    private static int a(int i, int i2) {
        if (i2 >= 56320 && i2 <= 57343) {
            return (65536 + ((i - 55296) << 10)) + (i2 - 56320);
        }
        throw new IllegalArgumentException("Broken surrogate pair: first char 0x" + Integer.toHexString(i) + ", second 0x" + Integer.toHexString(i2) + "; illegal combination");
    }

    private static void a(int i) {
        throw new IllegalArgumentException(h.c(i));
    }
}
