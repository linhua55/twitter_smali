package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.DSAParameterSpec;
import org.spongycastle.crypto.digests.SHA256Digest;
import org.spongycastle.crypto.generators.DSAParametersGenerator;
import org.spongycastle.crypto.params.DSAParameterGenerationParameters;
import org.spongycastle.crypto.params.DSAParameters;

/* compiled from: Twttr */
public class AlgorithmParameterGeneratorSpi extends java.security.AlgorithmParameterGeneratorSpi {
    protected SecureRandom a;
    protected int b;
    protected DSAParameterGenerationParameters c;

    public AlgorithmParameterGeneratorSpi() {
        this.b = 1024;
    }

    protected void engineInit(int i, SecureRandom secureRandom) {
        if (i < 512 || i > 3072) {
            throw new InvalidParameterException("strength must be from 512 - 3072");
        } else if (i <= 1024 && i % 64 != 0) {
            throw new InvalidParameterException("strength must be a multiple of 64 below 1024 bits.");
        } else if (i <= 1024 || i % 1024 == 0) {
            this.b = i;
            this.a = secureRandom;
        } else {
            throw new InvalidParameterException("strength must be a multiple of 1024 above 1024 bits.");
        }
    }

    protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
        throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for DSA parameter generation.");
    }

    protected AlgorithmParameters engineGenerateParameters() {
        DSAParametersGenerator dSAParametersGenerator;
        if (this.b <= 1024) {
            dSAParametersGenerator = new DSAParametersGenerator();
        } else {
            dSAParametersGenerator = new DSAParametersGenerator(new SHA256Digest());
        }
        if (this.a == null) {
            this.a = new SecureRandom();
        }
        if (this.b == 1024) {
            this.c = new DSAParameterGenerationParameters(1024, 160, 80, this.a);
            dSAParametersGenerator.a(this.c);
        } else if (this.b > 1024) {
            this.c = new DSAParameterGenerationParameters(this.b, 256, 80, this.a);
            dSAParametersGenerator.a(this.c);
        } else {
            dSAParametersGenerator.a(this.b, 20, this.a);
        }
        DSAParameters a = dSAParametersGenerator.a();
        try {
            AlgorithmParameters instance = AlgorithmParameters.getInstance("DSA", "SC");
            instance.init(new DSAParameterSpec(a.a(), a.b(), a.c()));
            return instance;
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        }
    }
}
