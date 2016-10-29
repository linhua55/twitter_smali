package org.spongycastle.crypto.modes;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;

/* compiled from: Twttr */
public interface AEADBlockCipher {
    int a(int i);

    int a(byte[] bArr, int i) throws IllegalStateException, InvalidCipherTextException;

    int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException;

    BlockCipher a();

    void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    void a(byte[] bArr, int i, int i2);

    int b(int i);
}
