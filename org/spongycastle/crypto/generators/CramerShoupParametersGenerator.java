package org.spongycastle.crypto.generators;

import java.math.BigInteger;

/* compiled from: Twttr */
public class CramerShoupParametersGenerator {
    private static final BigInteger a;

    /* compiled from: Twttr */
    class ParametersHelper {
        private static final BigInteger a;

        private ParametersHelper() {
        }

        static {
            a = BigInteger.valueOf(2);
        }
    }

    static {
        a = BigInteger.valueOf(1);
    }
}
