package org.spongycastle.math.field;

import java.math.BigInteger;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
class GenericPolynomialExtensionField implements PolynomialExtensionField {
    protected final FiniteField a;
    protected final Polynomial b;

    GenericPolynomialExtensionField(FiniteField finiteField, Polynomial polynomial) {
        this.a = finiteField;
        this.b = polynomial;
    }

    public BigInteger a() {
        return this.a.a();
    }

    public int b() {
        return this.a.b() * this.b.a();
    }

    public Polynomial c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof GenericPolynomialExtensionField)) {
            return false;
        }
        GenericPolynomialExtensionField genericPolynomialExtensionField = (GenericPolynomialExtensionField) obj;
        if (this.a.equals(genericPolynomialExtensionField.a) && this.b.equals(genericPolynomialExtensionField.b)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode() ^ Integers.a(this.b.hashCode(), 16);
    }
}
