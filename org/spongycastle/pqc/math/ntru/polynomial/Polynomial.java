package org.spongycastle.pqc.math.ntru.polynomial;

/* compiled from: Twttr */
public interface Polynomial {
    BigIntPolynomial a(BigIntPolynomial bigIntPolynomial);

    IntegerPolynomial a(IntegerPolynomial integerPolynomial);

    IntegerPolynomial a(IntegerPolynomial integerPolynomial, int i);

    IntegerPolynomial m();
}
