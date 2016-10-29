package com.facebook.imageformat;

import defpackage.bx;
import java.io.InputStream;

/* compiled from: Twttr */
public final class a {
    private static final byte[] a;
    private static final byte[] b;
    private static final byte[] c;

    static {
        a = new byte[]{(byte) 0, ClosedCaptionCtrl.BACKSPACE, (byte) -7, (byte) 4};
        b = new byte[]{(byte) 0, ClosedCaptionCtrl.ERASE_DISPLAYED_MEMORY};
        c = new byte[]{(byte) 0, ClosedCaptionCtrl.BACKSPACE};
    }

    public static boolean a(InputStream inputStream) {
        byte[] bArr = new byte[10];
        try {
            inputStream.read(bArr, 0, 10);
            int i = 0;
            int i2 = 0;
            while (inputStream.read(bArr, i2, 1) > 0) {
                if (a(bArr, i2 + 1, a) && (a(bArr, i2 + 9, b) || a(bArr, i2 + 9, c))) {
                    i++;
                    if (i > 1) {
                        return true;
                    }
                }
                i2 = (i2 + 1) % bArr.length;
            }
            return false;
        } catch (Throwable e) {
            throw new RuntimeException(e);
        }
    }

    static boolean a(byte[] bArr, int i, byte[] bArr2) {
        bx.a((Object) bArr);
        bx.a((Object) bArr2);
        bx.a(i >= 0);
        if (bArr2.length > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[(i2 + i) % bArr.length] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }
}
