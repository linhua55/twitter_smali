package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.ElGamalKeyPairGenerator;
import org.spongycastle.crypto.generators.ElGamalParametersGenerator;
import org.spongycastle.crypto.params.ElGamalKeyGenerationParameters;
import org.spongycastle.crypto.params.ElGamalParameters;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

/* compiled from: Twttr */
public class KeyPairGeneratorSpi extends KeyPairGenerator {
    ElGamalKeyGenerationParameters a;
    ElGamalKeyPairGenerator b;
    int c;
    int d;
    SecureRandom e;
    boolean f;

    public KeyPairGeneratorSpi() {
        super("ElGamal");
        this.b = new ElGamalKeyPairGenerator();
        this.c = 1024;
        this.d = 20;
        this.e = new SecureRandom();
        this.f = false;
    }

    public void initialize(int i, SecureRandom secureRandom) {
        this.c = i;
        this.e = secureRandom;
    }

    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if ((algorithmParameterSpec instanceof ElGamalParameterSpec) || (algorithmParameterSpec instanceof DHParameterSpec)) {
            if (algorithmParameterSpec instanceof ElGamalParameterSpec) {
                ElGamalParameterSpec elGamalParameterSpec = (ElGamalParameterSpec) algorithmParameterSpec;
                this.a = new ElGamalKeyGenerationParameters(secureRandom, new ElGamalParameters(elGamalParameterSpec.a(), elGamalParameterSpec.b()));
            } else {
                DHParameterSpec dHParameterSpec = (DHParameterSpec) algorithmParameterSpec;
                this.a = new ElGamalKeyGenerationParameters(secureRandom, new ElGamalParameters(dHParameterSpec.getP(), dHParameterSpec.getG(), dHParameterSpec.getL()));
            }
            this.b.a(this.a);
            this.f = true;
            return;
        }
        throw new InvalidAlgorithmParameterException("parameter object not a DHParameterSpec or an ElGamalParameterSpec");
    }

    public KeyPair generateKeyPair() {
        if (!this.f) {
            DHParameterSpec a = BouncyCastleProvider.a.a(this.c);
            if (a != null) {
                this.a = new ElGamalKeyGenerationParameters(this.e, new ElGamalParameters(a.getP(), a.getG(), a.getL()));
            } else {
                ElGamalParametersGenerator elGamalParametersGenerator = new ElGamalParametersGenerator();
                elGamalParametersGenerator.a(this.c, this.d, this.e);
                this.a = new ElGamalKeyGenerationParameters(this.e, elGamalParametersGenerator.a());
            }
            this.b.a(this.a);
            this.f = true;
        }
        AsymmetricCipherKeyPair a2 = this.b.a();
        return new KeyPair(new BCElGamalPublicKey((ElGamalPublicKeyParameters) a2.a()), new BCElGamalPrivateKey((ElGamalPrivateKeyParameters) a2.b()));
    }
}
