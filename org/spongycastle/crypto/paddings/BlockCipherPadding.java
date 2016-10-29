package org.spongycastle.crypto.paddings;

import java.security.SecureRandom;
import org.spongycastle.crypto.InvalidCipherTextException;

/* compiled from: Twttr */
public interface BlockCipherPadding {
    int a(byte[] bArr) throws InvalidCipherTextException;

    int a(byte[] bArr, int i);

    void a(SecureRandom secureRandom) throws IllegalArgumentException;
}
