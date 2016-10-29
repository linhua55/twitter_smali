package org.spongycastle.crypto.generators;

import java.math.BigInteger;

/* compiled from: Twttr */
public class RSABlindingFactorGenerator {
    private static BigInteger a;
    private static BigInteger b;

    static {
        a = BigInteger.valueOf(0);
        b = BigInteger.valueOf(1);
    }
}
