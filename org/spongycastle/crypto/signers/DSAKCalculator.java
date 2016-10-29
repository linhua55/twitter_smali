package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;

/* compiled from: Twttr */
public interface DSAKCalculator {
    void a(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr);

    void a(BigInteger bigInteger, SecureRandom secureRandom);

    boolean a();

    BigInteger b();
}
