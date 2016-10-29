package org.spongycastle.crypto.generators;

import java.math.BigInteger;
import java.security.SecureRandom;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.AsymmetricCipherKeyPairGenerator;
import org.spongycastle.crypto.params.AsymmetricKeyParameter;
import org.spongycastle.crypto.params.CramerShoupKeyGenerationParameters;
import org.spongycastle.crypto.params.CramerShoupParameters;
import org.spongycastle.crypto.params.CramerShoupPrivateKeyParameters;
import org.spongycastle.crypto.params.CramerShoupPublicKeyParameters;
import org.spongycastle.util.BigIntegers;

/* compiled from: Twttr */
public class CramerShoupKeyPairGenerator implements AsymmetricCipherKeyPairGenerator {
    private static final BigInteger a;
    private CramerShoupKeyGenerationParameters b;

    static {
        a = BigInteger.valueOf(1);
    }

    public AsymmetricCipherKeyPair a() {
        CramerShoupParameters c = this.b.c();
        CramerShoupPrivateKeyParameters a = a(this.b.a(), c);
        AsymmetricKeyParameter a2 = a(c, a);
        a.a(a2);
        return new AsymmetricCipherKeyPair(a2, a);
    }

    private BigInteger a(BigInteger bigInteger, SecureRandom secureRandom) {
        return BigIntegers.a(a, bigInteger.subtract(a), secureRandom);
    }

    private CramerShoupPrivateKeyParameters a(SecureRandom secureRandom, CramerShoupParameters cramerShoupParameters) {
        BigInteger c = cramerShoupParameters.c();
        return new CramerShoupPrivateKeyParameters(cramerShoupParameters, a(c, secureRandom), a(c, secureRandom), a(c, secureRandom), a(c, secureRandom), a(c, secureRandom));
    }

    private CramerShoupPublicKeyParameters a(CramerShoupParameters cramerShoupParameters, CramerShoupPrivateKeyParameters cramerShoupPrivateKeyParameters) {
        BigInteger a = cramerShoupParameters.a();
        BigInteger b = cramerShoupParameters.b();
        BigInteger c = cramerShoupParameters.c();
        return new CramerShoupPublicKeyParameters(cramerShoupParameters, a.modPow(cramerShoupPrivateKeyParameters.c(), c).multiply(b.modPow(cramerShoupPrivateKeyParameters.d(), c)), a.modPow(cramerShoupPrivateKeyParameters.e(), c).multiply(b.modPow(cramerShoupPrivateKeyParameters.f(), c)), a.modPow(cramerShoupPrivateKeyParameters.g(), c));
    }
}
