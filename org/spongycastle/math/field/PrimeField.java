package org.spongycastle.math.field;

import java.math.BigInteger;

/* compiled from: Twttr */
class PrimeField implements FiniteField {
    protected final BigInteger a;

    PrimeField(BigInteger bigInteger) {
        this.a = bigInteger;
    }

    public BigInteger a() {
        return this.a;
    }

    public int b() {
        return 1;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof PrimeField)) {
            return false;
        }
        return this.a.equals(((PrimeField) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
