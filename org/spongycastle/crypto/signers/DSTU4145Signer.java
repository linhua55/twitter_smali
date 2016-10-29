package org.spongycastle.crypto.signers;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DSA;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.FixedPointCombMultiplier;
import org.spongycastle.util.Arrays;

/* compiled from: Twttr */
public class DSTU4145Signer implements DSA {
    private static final BigInteger a;
    private ECKeyParameters b;
    private SecureRandom c;

    static {
        a = BigInteger.valueOf(1);
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        if (z) {
            CipherParameters b;
            if (cipherParameters instanceof ParametersWithRandom) {
                ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
                this.c = parametersWithRandom.a();
                b = parametersWithRandom.b();
            } else {
                this.c = new SecureRandom();
                b = cipherParameters;
            }
            this.b = (ECPrivateKeyParameters) b;
            return;
        }
        this.b = (ECPublicKeyParameters) cipherParameters;
    }

    public BigInteger[] a(byte[] bArr) {
        ECFieldElement a;
        ECDomainParameters b = this.b.b();
        ECCurve a2 = b.a();
        ECFieldElement a3 = a(a2, bArr);
        if (a3.j()) {
            a = a2.a(a);
        } else {
            a = a3;
        }
        BigInteger c = b.c();
        BigInteger c2 = ((ECPrivateKeyParameters) this.b).c();
        ECMultiplier a4 = a();
        while (true) {
            BigInteger a5 = a(c, this.c);
            ECFieldElement g = a4.a(b.b(), a5).p().g();
            if (!g.j()) {
                BigInteger a6 = a(c, a.c(g));
                if (a6.signum() != 0) {
                    if (a6.multiply(c2).add(a5).mod(c).signum() != 0) {
                        return new BigInteger[]{a6, a6.multiply(c2).add(a5).mod(c)};
                    }
                } else {
                    continue;
                }
            }
        }
    }

    public boolean a(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        if (bigInteger.signum() <= 0 || bigInteger2.signum() <= 0) {
            return false;
        }
        ECDomainParameters b = this.b.b();
        BigInteger c = b.c();
        if (bigInteger.compareTo(c) >= 0 || bigInteger2.compareTo(c) >= 0) {
            return false;
        }
        ECFieldElement a;
        ECCurve a2 = b.a();
        ECFieldElement a3 = a(a2, bArr);
        if (a3.j()) {
            a = a2.a(a);
        } else {
            a = a3;
        }
        ECPoint p = ECAlgorithms.a(b.b(), bigInteger2, ((ECPublicKeyParameters) this.b).c(), bigInteger).p();
        if (p.q()) {
            return false;
        }
        return a(c, a.c(p.g())).compareTo(bigInteger) == 0;
    }

    protected ECMultiplier a() {
        return new FixedPointCombMultiplier();
    }

    private static BigInteger a(BigInteger bigInteger, SecureRandom secureRandom) {
        return new BigInteger(bigInteger.bitLength() - 1, secureRandom);
    }

    private static ECFieldElement a(ECCurve eCCurve, byte[] bArr) {
        return eCCurve.a(a(new BigInteger(1, Arrays.c(bArr)), eCCurve.a()));
    }

    private static BigInteger a(BigInteger bigInteger, ECFieldElement eCFieldElement) {
        return a(eCFieldElement.a(), bigInteger.bitLength() - 1);
    }

    private static BigInteger a(BigInteger bigInteger, int i) {
        if (bigInteger.bitLength() > i) {
            return bigInteger.mod(a.shiftLeft(i));
        }
        return bigInteger;
    }
}
