package org.spongycastle.crypto;

/* compiled from: Twttr */
public class InvalidCipherTextException extends CryptoException {
    public InvalidCipherTextException(String str) {
        super(str);
    }

    public InvalidCipherTextException(String str, Throwable th) {
        super(str, th);
    }
}
