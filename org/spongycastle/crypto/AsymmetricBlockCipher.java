package org.spongycastle.crypto;

/* compiled from: Twttr */
public interface AsymmetricBlockCipher {
    int a();

    void a(boolean z, CipherParameters cipherParameters);

    byte[] a(byte[] bArr, int i, int i2) throws InvalidCipherTextException;

    int b();
}
