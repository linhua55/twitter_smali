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
public class ECGOST3410Signer implements DSA {
    ECKeyParameters a;
    SecureRandom b;

    public void a(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.a = (ECPublicKeyParameters) cipherParameters;
        } else if (cipherParameters instanceof ParametersWithRandom) {
            ParametersWithRandom parametersWithRandom = (ParametersWithRandom) cipherParameters;
            this.b = parametersWithRandom.a();
            this.a = (ECPrivateKeyParameters) parametersWithRandom.b();
        } else {
            this.b = new SecureRandom();
            this.a = (ECPrivateKeyParameters) cipherParameters;
        }
    }

    public BigInteger[] a(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i != bArr2.length; i++) {
            bArr2[i] = bArr[(bArr2.length - 1) - i];
        }
        BigInteger bigInteger = new BigInteger(1, bArr2);
        ECDomainParameters b = this.a.b();
        BigInteger c = b.c();
        BigInteger c2 = ((ECPrivateKeyParameters) this.a).c();
        ECMultiplier a = a();
        while (true) {
            BigInteger bigInteger2 = new BigInteger(c.bitLength(), this.b);
            if (!bigInteger2.equals(ECConstants.c)) {
                BigInteger mod = a.a(b.b(), bigInteger2).p().g().a().mod(c);
                if (mod.equals(ECConstants.c)) {
                    continue;
                } else {
                    if (!bigInteger2.multiply(bigInteger).add(c2.multiply(mod)).mod(c).equals(ECConstants.c)) {
                        return new BigInteger[]{mod, bigInteger2.multiply(bigInteger).add(c2.multiply(mod)).mod(c)};
                    }
                }
            }
        }
    }

    public boolean a(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) {
        byte[] bArr2 = new byte[bArr.length];
        for (int i = 0; i != bArr2.length; i++) {
            bArr2[i] = bArr[(bArr2.length - 1) - i];
        }
        BigInteger bigInteger3 = new BigInteger(1, bArr2);
        BigInteger c = this.a.b().c();
        if (bigInteger.compareTo(ECConstants.d) < 0 || bigInteger.compareTo(c) >= 0 || bigInteger2.compareTo(ECConstants.d) < 0 || bigInteger2.compareTo(c) >= 0) {
            return false;
        }
        bigInteger3 = bigInteger3.modInverse(c);
        ECPoint p = ECAlgorithms.a(this.a.b().b(), bigInteger2.multiply(bigInteger3).mod(c), ((ECPublicKeyParameters) this.a).c(), c.subtract(bigInteger).multiply(bigInteger3).mod(c)).p();
        if (p.q()) {
            return false;
        }
        return p.g().a().mod(c).equals(bigInteger);
    }

    protected ECMultiplier a() {
        return new FixedPointCombMultiplier();
    }
}
