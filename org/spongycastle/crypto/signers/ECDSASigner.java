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
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECMultiplier;
import org.spongycastle.math.ec.ECPoint;
import org.spongycastle.math.ec.FixedPointCombMultiplier;

/* compiled from: Twttr */
public class ECDSASigner implements DSA, ECConstants {
    private final DSAKCalculator a;
    private ECKeyParameters b;
    private SecureRandom h;

    public ECDSASigner() {
        this.a = new RandomDSAKCalculator();
    }

    public ECDSASigner(DSAKCalculator dSAKCalculator) {
        this.a = dSAKCalculator;
    }

    public void a(boolean z, CipherParameters cipherParameters) {
        SecureRandom secureRandom;
        if (!z) {
            this.b = (ECPublicKeyParameters) cipherParameters;
            secureRandom = null;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.b = (ECPrivateKeyParameters) parametersWithRandom.b();
            secureRandom = parametersWithRandom.a();
        } else {
            this.b = (ECPrivateKeyParameters) cipherParameters;
            secureRandom = null;
        }
        boolean z2 = z && !this.a.a();
        this.h = a(z2, secureRandom);
    }

    public BigInteger[] a(byte[] bArr) {
        ECDomainParameters b = this.b.b();
        BigInteger c = b.c();
        BigInteger a = a(c, bArr);
        BigInteger c2 = ((ECPrivateKeyParameters) this.b).c();
        if (this.a.a()) {
            this.a.a(c, c2, bArr);
        } else {
            this.a.a(c, this.h);
        }
        ECMultiplier a2 = a();
        while (true) {
            BigInteger b2 = this.a.b();
            BigInteger mod = a2.a(b.b(), b2).p().g().a().mod(c);
            if (!mod.equals(c)) {
                if (!b2.modInverse(c).multiply(a.add(c2.multiply(mod))).mod(c).equals(c)) {
                    return new BigInteger[]{mod, b2.modInverse(c).multiply(a.add(c2.multiply(mod))).mod(c)};
                }
            }
        }
    }

    public boolean a(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        ECDomainParameters b = this.b.b();
        BigInteger c = b.c();
        BigInteger a = a(c, bArr);
        if (bigInteger.compareTo(d) < 0 || bigInteger.compareTo(c) >= 0) {
            return false;
        }
        if (bigInteger2.compareTo(d) < 0 || bigInteger2.compareTo(c) >= 0) {
            return false;
        }
        BigInteger modInverse = bigInteger2.modInverse(c);
        ECPoint p = ECAlgorithms.a(b.b(), a.multiply(modInverse).mod(c), ((ECPublicKeyParameters) this.b).c(), bigInteger.multiply(modInverse).mod(c)).p();
        if (p.q()) {
            return false;
        }
        return p.g().a().mod(c).equals(bigInteger);
    }

    protected BigInteger a(BigInteger bigInteger, byte[] bArr) {
        int bitLength = bigInteger.bitLength();
        int length = bArr.length * 8;
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        if (bitLength < length) {
            return bigInteger2.shiftRight(length - bitLength);
        }
        return bigInteger2;
    }

    protected ECMultiplier a() {
        return new FixedPointCombMultiplier();
    }

    protected SecureRandom a(boolean z, SecureRandom secureRandom) {
        if (z) {
            return secureRandom == null ? new SecureRandom() : secureRandom;
        } else {
            return null;
        }
    }
}
