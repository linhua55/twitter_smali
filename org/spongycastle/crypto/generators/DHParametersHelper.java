package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.math.ec.WNafUtil;
import org.spongycastle.util.BigIntegers;

/* compiled from: Twttr */
class DHParametersHelper {
    private static final BigInteger a;
    private static final BigInteger b;

    DHParametersHelper() {
    }

    static {
        a = BigInteger.valueOf(1);
        b = BigInteger.valueOf(2);
    }

    static BigInteger[] a(int i, int i2, SecureRandom secureRandom) {
        int i3 = i - 1;
        int i4 = i >>> 2;
        while (true) {
            BigInteger bigInteger = new BigInteger(i3, 2, secureRandom);
            BigInteger add = bigInteger.shiftLeft(1).add(a);
            if (add.isProbablePrime(i2) && ((i2 <= 2 || bigInteger.isProbablePrime(i2 - 2)) && WNafUtil.c(add) >= i4)) {
                return new BigInteger[]{add, bigInteger};
            }
        }
    }

    static BigInteger a(BigInteger bigInteger, BigInteger bigInteger2, SecureRandom secureRandom) {
        BigInteger modPow;
        BigInteger subtract = bigInteger.subtract(b);
        do {
            modPow = BigIntegers.a(b, subtract, secureRandom).modPow(b, bigInteger);
        } while (modPow.equals(a));
        return modPow;
    }
}
