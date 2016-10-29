package org.spongycastle.crypto.prng;

import java.security.SecureRandom;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.prng.drbg.CTRSP800DRBG;
import org.spongycastle.crypto.prng.drbg.DualECPoints;
import org.spongycastle.crypto.prng.drbg.DualECSP800DRBG;
import org.spongycastle.crypto.prng.drbg.HMacSP800DRBG;
import org.spongycastle.crypto.prng.drbg.HashSP800DRBG;
import org.spongycastle.crypto.prng.drbg.SP80090DRBG;

/* compiled from: Twttr */
public class SP800SecureRandomBuilder {
    private final SecureRandom a;
    private final EntropySourceProvider b;
    private int c;
    private int d;

    /* compiled from: Twttr */
    class CTRDRBGProvider implements DRBGProvider {
        private final BlockCipher a;
        private final int b;
        private final byte[] c;
        private final byte[] d;
        private final int e;

        public SP80090DRBG a(EntropySource entropySource) {
            return new CTRSP800DRBG(this.a, this.b, this.e, entropySource, this.d, this.c);
        }
    }

    /* compiled from: Twttr */
    class ConfigurableDualECDRBGProvider implements DRBGProvider {
        private final DualECPoints[] a;
        private final Digest b;
        private final byte[] c;
        private final byte[] d;
        private final int e;

        public SP80090DRBG a(EntropySource entropySource) {
            return new DualECSP800DRBG(this.a, this.b, this.e, entropySource, this.d, this.c);
        }
    }

    /* compiled from: Twttr */
    class DualECDRBGProvider implements DRBGProvider {
        private final Digest a;
        private final byte[] b;
        private final byte[] c;
        private final int d;

        public SP80090DRBG a(EntropySource entropySource) {
            return new DualECSP800DRBG(this.a, this.d, entropySource, this.c, this.b);
        }
    }

    /* compiled from: Twttr */
    class HMacDRBGProvider implements DRBGProvider {
        private final Mac a;
        private final byte[] b;
        private final byte[] c;
        private final int d;

        public SP80090DRBG a(EntropySource entropySource) {
            return new HMacSP800DRBG(this.a, this.d, entropySource, this.c, this.b);
        }
    }

    /* compiled from: Twttr */
    class HashDRBGProvider implements DRBGProvider {
        private final Digest a;
        private final byte[] b;
        private final byte[] c;
        private final int d;

        public SP80090DRBG a(EntropySource entropySource) {
            return new HashSP800DRBG(this.a, this.d, entropySource, this.c, this.b);
        }
    }

    public SP800SecureRandomBuilder() {
        this(new SecureRandom(), false);
    }

    public SP800SecureRandomBuilder(SecureRandom secureRandom, boolean z) {
        this.c = 256;
        this.d = 256;
        this.a = secureRandom;
        this.b = new BasicEntropySourceProvider(this.a, z);
    }
}
