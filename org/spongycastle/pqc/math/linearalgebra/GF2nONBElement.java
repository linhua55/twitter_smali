package org.spongycastle.pqc.math.linearalgebra;

/* compiled from: Twttr */
public class GF2nONBElement extends GF2nElement {
    private static final long[] c;
    private static final long[] d;
    private static final int[] e;
    private int f;
    private int g;
    private long[] h;

    static {
        c = new long[]{1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144, 524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, 1073741824, 2147483648L, 4294967296L, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, 1099511627776L, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, 1125899906842624L, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, 1152921504606846976L, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};
        d = new long[]{1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, 2147483647L, 4294967295L, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, 4611686018427387903L, Long.MAX_VALUE, -1};
        e = new int[]{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};
    }

    public GF2nONBElement(GF2nONBElement gF2nONBElement) {
        this.a = gF2nONBElement.a;
        this.b = this.a.a();
        this.f = ((GF2nONBField) this.a).d();
        this.g = ((GF2nONBField) this.a).e();
        this.h = new long[this.f];
        a(gF2nONBElement.b());
    }

    public Object clone() {
        return new GF2nONBElement(this);
    }

    private void a(long[] jArr) {
        System.arraycopy(jArr, 0, this.h, 0, this.f);
    }

    public boolean a() {
        int i = 0;
        boolean z = true;
        while (i < this.f && z) {
            if (z && (this.h[i] & -1) == 0) {
                z = true;
            } else {
                z = false;
            }
            i++;
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nONBElement)) {
            return false;
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) obj;
        for (int i = 0; i < this.f; i++) {
            if (this.h[i] != gF2nONBElement.h[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return this.h.hashCode();
    }

    private long[] b() {
        Object obj = new long[this.h.length];
        System.arraycopy(this.h, 0, obj, 0, this.h.length);
        return obj;
    }

    public String toString() {
        return a(16);
    }

    public String a(int i) {
        String str = "";
        long[] b = b();
        int i2 = this.g;
        if (i == 2) {
            int i3 = i2 - 1;
            String str2 = str;
            while (i3 >= 0) {
                if ((b[b.length - 1] & (1 << i3)) == 0) {
                    str = str2 + "0";
                } else {
                    str = str2 + "1";
                }
                i3--;
                str2 = str;
            }
            str = str2;
            for (i3 = b.length - 2; i3 >= 0; i3--) {
                for (i2 = 63; i2 >= 0; i2--) {
                    if ((b[i3] & c[i2]) == 0) {
                        str = str + "0";
                    } else {
                        str = str + "1";
                    }
                }
            }
        } else if (i == 16) {
            char[] cArr = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
            i2 = b.length - 1;
            while (i2 >= 0) {
                i2--;
                str = ((((((((((((((((str + cArr[((int) (b[i2] >>> 60)) & 15]) + cArr[((int) (b[i2] >>> 56)) & 15]) + cArr[((int) (b[i2] >>> 52)) & 15]) + cArr[((int) (b[i2] >>> 48)) & 15]) + cArr[((int) (b[i2] >>> 44)) & 15]) + cArr[((int) (b[i2] >>> 40)) & 15]) + cArr[((int) (b[i2] >>> 36)) & 15]) + cArr[((int) (b[i2] >>> 32)) & 15]) + cArr[((int) (b[i2] >>> 28)) & 15]) + cArr[((int) (b[i2] >>> 24)) & 15]) + cArr[((int) (b[i2] >>> 20)) & 15]) + cArr[((int) (b[i2] >>> 16)) & 15]) + cArr[((int) (b[i2] >>> 12)) & 15]) + cArr[((int) (b[i2] >>> 8)) & 15]) + cArr[((int) (b[i2] >>> 4)) & 15]) + cArr[((int) b[i2]) & 15]) + " ";
            }
        }
        return str;
    }
}
