package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.WhirlpoolDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

/* compiled from: Twttr */
public class Whirlpool {

    /* compiled from: Twttr */
    public class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new WhirlpoolDigest());
        }

        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.a = new WhirlpoolDigest((WhirlpoolDigest) this.a);
            return digest;
        }
    }

    /* compiled from: Twttr */
    public class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new WhirlpoolDigest()));
        }
    }

    /* compiled from: Twttr */
    public class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACWHIRLPOOL", 512, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends DigestAlgorithmProvider {
        private static final String a;

        static {
            a = Whirlpool.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("MessageDigest.WHIRLPOOL", a + "$Digest");
            a(configurableProvider, "WHIRLPOOL", a + "$HashMac", a + "$KeyGenerator");
        }
    }

    private Whirlpool() {
    }
}
