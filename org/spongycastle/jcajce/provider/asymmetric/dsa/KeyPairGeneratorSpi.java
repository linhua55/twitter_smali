package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.DSAKeyPairGenerator;
import org.spongycastle.crypto.generators.DSAParametersGenerator;
import org.spongycastle.crypto.params.DSAKeyGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;

/* compiled from: Twttr */
public class KeyPairGeneratorSpi extends KeyPairGenerator {
    DSAKeyGenerationParameters a;
    DSAKeyPairGenerator b;
    int c;
    int d;
    SecureRandom e;
    boolean f;

    public KeyPairGeneratorSpi() {
        super("DSA");
        this.b = new DSAKeyPairGenerator();
        this.c = 1024;
        this.d = 20;
        this.e = new SecureRandom();
        this.f = false;
    }

    public void initialize(int i, SecureRandom secureRandom) {
        if (i < 512 || i > 4096 || ((i < 1024 && i % 64 != 0) || (i >= 1024 && i % 1024 != 0))) {
            throw new InvalidParameterException("strength must be from 512 - 4096 and a multiple of 1024 above 1024");
        }
        this.c = i;
        this.e = secureRandom;
    }

    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec instanceof DSAParameterSpec) {
            DSAParameterSpec dSAParameterSpec = (DSAParameterSpec) algorithmParameterSpec;
            this.a = new DSAKeyGenerationParameters(secureRandom, new DSAParameters(dSAParameterSpec.getP(), dSAParameterSpec.getQ(), dSAParameterSpec.getG()));
            this.b.a(this.a);
            this.f = true;
            return;
        }
        throw new InvalidAlgorithmParameterException("parameter object not a DSAParameterSpec");
    }

    public KeyPair generateKeyPair() {
        if (!this.f) {
            DSAParametersGenerator dSAParametersGenerator = new DSAParametersGenerator();
            dSAParametersGenerator.a(this.c, this.d, this.e);
            this.a = new DSAKeyGenerationParameters(this.e, dSAParametersGenerator.a());
            this.b.a(this.a);
            this.f = true;
        }
        AsymmetricCipherKeyPair a = this.b.a();
        return new KeyPair(new BCDSAPublicKey((DSAPublicKeyParameters) a.a()), new BCDSAPrivateKey((DSAPrivateKeyParameters) a.b()));
    }
}
