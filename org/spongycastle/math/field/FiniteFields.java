package org.spongycastle.math.field;

import java.math.BigInteger;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class FiniteFields {
    static final FiniteField a;
    static final FiniteField b;

    static {
        a = new PrimeField(BigInteger.valueOf(2));
        b = new PrimeField(BigInteger.valueOf(3));
    }

    public static PolynomialExtensionField a(int[] iArr) {
        if (iArr[0] != 0) {
            throw new IllegalArgumentException("Irreducible polynomials in GF(2) must have constant term");
        }
        for (int i = 1; i < iArr.length; i++) {
            if (iArr[i] <= iArr[i - 1]) {
                throw new IllegalArgumentException("Polynomial exponents must be montonically increasing");
            }
        }
        return new GenericPolynomialExtensionField(a, new GF2Polynomial(iArr));
    }

    public static FiniteField a(BigInteger bigInteger) {
        int bitLength = bigInteger.bitLength();
        if (bigInteger.signum() <= 0 || bitLength < 2) {
            throw new IllegalArgumentException("'characteristic' must be >= 2");
        }
        if (bitLength < 3) {
            switch (bigInteger.intValue()) {
                case p.View_paddingStart /*2*/:
                    return a;
                case p.View_paddingEnd /*3*/:
                    return b;
            }
        }
        return new PrimeField(bigInteger);
    }
}
