package com.google.android.gms.internal;

import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.ViewCompat;
import java.security.MessageDigest;

@oi
public class bt extends bn {
    private MessageDigest b;

    byte a(int i) {
        return (byte) ((((i & MotionEventCompat.ACTION_MASK) ^ ((MotionEventCompat.ACTION_POINTER_INDEX_MASK & i) >> 8)) ^ ((16711680 & i) >> 16)) ^ ((ViewCompat.MEASURED_STATE_MASK & i) >> 24));
    }

    public byte[] a(String str) {
        byte[] a = a(str.split(" "));
        this.b = a();
        synchronized (this.a) {
            if (this.b == null) {
                a = new byte[0];
            } else {
                this.b.reset();
                this.b.update(a);
                Object digest = this.b.digest();
                int i = 4;
                if (digest.length <= 4) {
                    i = digest.length;
                }
                a = new byte[i];
                System.arraycopy(digest, 0, a, 0, a.length);
            }
        }
        return a;
    }

    byte[] a(String[] strArr) {
        byte[] bArr = new byte[strArr.length];
        for (int i = 0; i < strArr.length; i++) {
            bArr[i] = a(bs.a(strArr[i]));
        }
        return bArr;
    }
}
