package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.DHParameters;
import org.spongycastle.math.ec.WNafUtil;
import org.spongycastle.util.BigIntegers;

/* compiled from: Twttr */
class DHKeyGeneratorHelper {
    static final DHKeyGeneratorHelper a;
    private static final BigInteger b;
    private static final BigInteger c;

    static {
        a = new DHKeyGeneratorHelper();
        b = BigInteger.valueOf(1);
        c = BigInteger.valueOf(2);
    }

    private DHKeyGeneratorHelper() {
    }

    BigInteger a(DHParameters dHParameters, SecureRandom secureRandom) {
        int e = dHParameters.e();
        BigInteger bit;
        if (e != 0) {
            int i = e >>> 2;
            do {
                bit = new BigInteger(e, secureRandom).setBit(e - 1);
            } while (WNafUtil.c(bit) < i);
            return bit;
        }
        bit = c;
        e = dHParameters.d();
        if (e != 0) {
            bit = b.shiftLeft(e - 1);
        }
        BigInteger c = dHParameters.c();
        if (c == null) {
            c = dHParameters.a();
        }
        BigInteger subtract = c.subtract(c);
        int bitLength = subtract.bitLength() >>> 2;
        do {
            c = BigIntegers.a(bit, subtract, secureRandom);
        } while (WNafUtil.c(c) < bitLength);
        return c;
    }

    BigInteger a(DHParameters dHParameters, BigInteger bigInteger) {
        return dHParameters.b().modPow(bigInteger, dHParameters.a());
    }
}
