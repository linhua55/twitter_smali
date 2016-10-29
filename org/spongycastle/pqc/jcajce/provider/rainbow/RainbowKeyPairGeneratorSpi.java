package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.security.InvalidAlgorithmParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.pqc.crypto.rainbow.RainbowKeyGenerationParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowKeyPairGenerator;
import org.spongycastle.pqc.crypto.rainbow.RainbowParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.RainbowPublicKeyParameters;
import org.spongycastle.pqc.jcajce.spec.RainbowParameterSpec;

/* compiled from: Twttr */
public class RainbowKeyPairGeneratorSpi extends KeyPairGenerator {
    RainbowKeyGenerationParameters a;
    RainbowKeyPairGenerator b;
    int c;
    SecureRandom d;
    boolean e;

    public RainbowKeyPairGeneratorSpi() {
        super("Rainbow");
        this.b = new RainbowKeyPairGenerator();
        this.c = 1024;
        this.d = new SecureRandom();
        this.e = false;
    }

    public void initialize(int i, SecureRandom secureRandom) {
        this.c = i;
        this.d = secureRandom;
    }

    public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        if (algorithmParameterSpec instanceof RainbowParameterSpec) {
            this.a = new RainbowKeyGenerationParameters(secureRandom, new RainbowParameters(((RainbowParameterSpec) algorithmParameterSpec).a()));
            this.b.b(this.a);
            this.e = true;
            return;
        }
        throw new InvalidAlgorithmParameterException("parameter object not a RainbowParameterSpec");
    }

    public KeyPair generateKeyPair() {
        if (!this.e) {
            this.a = new RainbowKeyGenerationParameters(this.d, new RainbowParameters(new RainbowParameterSpec().a()));
            this.b.b(this.a);
            this.e = true;
        }
        AsymmetricCipherKeyPair a = this.b.a();
        return new KeyPair(new BCRainbowPublicKey((RainbowPublicKeyParameters) a.a()), new BCRainbowPrivateKey((RainbowPrivateKeyParameters) a.b()));
    }
}
