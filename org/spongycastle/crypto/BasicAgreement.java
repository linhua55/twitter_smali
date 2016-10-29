package org.spongycastle.crypto;

import java.math.BigInteger;

/* compiled from: Twttr */
public interface BasicAgreement {
    int a();

    void a(CipherParameters cipherParameters);

    BigInteger b(CipherParameters cipherParameters);
}
