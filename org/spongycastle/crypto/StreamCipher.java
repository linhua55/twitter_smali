package org.spongycastle.crypto;

/* compiled from: Twttr */
public interface StreamCipher {
    byte a(byte b);

    int a(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException;

    String a();

    void a(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

    void c();
}
