package org.spongycastle.crypto;

/* compiled from: Twttr */
public interface DerivationFunction {
    int a(byte[] bArr, int i, int i2) throws DataLengthException, IllegalArgumentException;

    void a(DerivationParameters derivationParameters);
}
