package org.spongycastle.crypto.prng;

import java.security.SecureRandom;
import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

/* compiled from: Twttr */
public class SP800SecureRandom extends SecureRandom {
    private SP80090DRBG drbg;
    private final DRBGProvider drbgProvider;
    private final EntropySource entropySource;
    private final boolean predictionResistant;
    private final SecureRandom randomSource;

    public void setSeed(byte[] bArr) {
        synchronized (this) {
            if (this.randomSource != null) {
                this.randomSource.setSeed(bArr);
            }
        }
    }

    public void setSeed(long j) {
        synchronized (this) {
            if (this.randomSource != null) {
                this.randomSource.setSeed(j);
            }
        }
    }

    public void nextBytes(byte[] bArr) {
        synchronized (this) {
            if (this.drbg == null) {
                this.drbg = this.drbgProvider.a(this.entropySource);
            }
            if (this.drbg.a(bArr, null, this.predictionResistant) < 0) {
                this.drbg.a(this.entropySource.a());
                this.drbg.a(bArr, null, this.predictionResistant);
            }
        }
    }

    public byte[] generateSeed(int i) {
        byte[] bArr = new byte[i];
        nextBytes(bArr);
        return bArr;
    }
}
