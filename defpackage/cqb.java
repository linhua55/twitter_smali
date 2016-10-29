package defpackage;

import java.io.UnsupportedEncodingException;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: cqb */
public final class cqb {
    static final /* synthetic */ boolean a;

    static {
        a = !cqb.class.desiredAssertionStatus();
    }

    public static String a(byte[] bArr, int i) {
        try {
            return new String(cqb.b(bArr, i), "US-ASCII");
        } catch (UnsupportedEncodingException e) {
            throw new AssertionError(e);
        }
    }

    public static byte[] b(byte[] bArr, int i) {
        return cqb.a(bArr, 0, bArr.length, i);
    }

    public static byte[] a(byte[] bArr, int i, int i2, int i3) {
        cqd cqd = new cqd(i3, null);
        int i4 = (i2 / 3) * 4;
        if (!cqd.c) {
            switch (i2 % 3) {
                case p.View_android_theme /*0*/:
                    break;
                case p.View_android_focusable /*1*/:
                    i4 += 2;
                    break;
                case p.View_paddingStart /*2*/:
                    i4 += 3;
                    break;
                default:
                    break;
            }
        } else if (i2 % 3 > 0) {
            i4 += 4;
        }
        if (cqd.d && i2 > 0) {
            int i5;
            int i6 = ((i2 - 1) / 57) + 1;
            if (cqd.e) {
                i5 = 2;
            } else {
                i5 = 1;
            }
            i4 += i5 * i6;
        }
        cqd.a = new byte[i4];
        cqd.a(bArr, i, i2, true);
        if (a || cqd.b == i4) {
            return cqd.a;
        }
        throw new AssertionError();
    }

    private cqb() {
    }
}
