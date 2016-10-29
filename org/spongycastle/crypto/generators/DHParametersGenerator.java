package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.params.DHParameters;

/* compiled from: Twttr */
public class DHParametersGenerator {
    private static final BigInteger d;
    private int a;
    private int b;
    private SecureRandom c;

    static {
        d = BigInteger.valueOf(2);
    }

    public void a(int i, int i2, SecureRandom secureRandom) {
        this.a = i;
        this.b = i2;
        this.c = secureRandom;
    }

    public DHParameters a() {
        BigInteger[] a = DHParametersHelper.a(this.a, this.b, this.c);
        BigInteger bigInteger = a[0];
        BigInteger bigInteger2 = a[1];
        return new DHParameters(bigInteger, DHParametersHelper.a(bigInteger, bigInteger2, this.c), bigInteger2, d, null);
    }
}
