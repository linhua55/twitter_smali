package org.spongycastle.jcajce.provider.symmetric.util;

import java.security.AlgorithmParameterGeneratorSpi;
import java.security.SecureRandom;

/* compiled from: Twttr */
public abstract class BaseAlgorithmParameterGenerator extends AlgorithmParameterGeneratorSpi {
    protected SecureRandom b;
    protected int c;

    public BaseAlgorithmParameterGenerator() {
        this.c = 1024;
    }

    protected void engineInit(int i, SecureRandom secureRandom) {
        this.c = i;
        this.b = secureRandom;
    }
}
