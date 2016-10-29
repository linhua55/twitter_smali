package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

/* compiled from: Twttr */
public class ZeroBytePadding implements BlockCipherPadding {
    public void a(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    public int a(byte[] bArr, int i) {
        int length = bArr.length - i;
        while (i < bArr.length) {
            bArr[i] = (byte) 0;
            i++;
        }
        return length;
    }

    public int a(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length;
        while (length > 0 && bArr[length - 1] == null) {
            length--;
        }
        return bArr.length - length;
    }
}
