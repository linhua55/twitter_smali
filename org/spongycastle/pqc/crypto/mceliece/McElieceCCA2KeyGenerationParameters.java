package org.spongycastle.pqc.crypto.mceliece;

import java.security.SecureRandom;
import org.spongycastle.crypto.KeyGenerationParameters;

/* compiled from: Twttr */
public class McElieceCCA2KeyGenerationParameters extends KeyGenerationParameters {
    private McElieceCCA2Parameters a;

    public McElieceCCA2KeyGenerationParameters(SecureRandom secureRandom, McElieceCCA2Parameters mcElieceCCA2Parameters) {
        super(secureRandom, 128);
        this.a = mcElieceCCA2Parameters;
    }

    public McElieceCCA2Parameters c() {
        return this.a;
    }
}
