package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

/* compiled from: Twttr */
public class ISO7816d4Padding implements BlockCipherPadding {
    public void a(SecureRandom secureRandom) throws IllegalArgumentException {
    }

    public int a(byte[] bArr, int i) {
        int length = bArr.length - i;
        bArr[i] = Byte.MIN_VALUE;
        for (int i2 = i + 1; i2 < bArr.length; i2++) {
            bArr[i2] = (byte) 0;
        }
        return length;
    }

    public int a(byte[] bArr) throws InvalidCipherTextException {
        int length = bArr.length - 1;
        while (length > 0 && bArr[length] == null) {
            length--;
        }
        if (bArr[length] == -128) {
            return bArr.length - length;
        }
        throw new InvalidCipherTextException("pad block corrupted");
    }
}
