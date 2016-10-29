package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;

/* compiled from: Twttr */
class RandomDSAKCalculator implements DSAKCalculator {
    private static final BigInteger a;
    private BigInteger b;
    private SecureRandom c;

    RandomDSAKCalculator() {
    }

    static {
        a = BigInteger.valueOf(0);
    }

    public boolean a() {
        return false;
    }

    public void a(BigInteger bigInteger, SecureRandom secureRandom) {
        this.b = bigInteger;
        this.c = secureRandom;
    }

    public void a(BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        throw new IllegalStateException("Operation not supported");
    }

    public BigInteger b() {
        int bitLength = this.b.bitLength();
        while (true) {
            BigInteger bigInteger = new BigInteger(bitLength, this.c);
            if (!bigInteger.equals(a) && bigInteger.compareTo(this.b) < 0) {
                return bigInteger;
            }
        }
    }
}
