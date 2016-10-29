package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.RIPEMD256Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

/* compiled from: Twttr */
public class RIPEMD256 {

    /* compiled from: Twttr */
    public class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new RIPEMD256Digest());
        }

        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.a = new RIPEMD256Digest((RIPEMD256Digest) this.a);
            return digest;
        }
    }

    /* compiled from: Twttr */
    public class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new RIPEMD256Digest()));
        }
    }

    /* compiled from: Twttr */
    public class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACRIPEMD256", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends DigestAlgorithmProvider {
        private static final String a;

        static {
            a = RIPEMD256.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("MessageDigest.RIPEMD256", a + "$Digest");
            configurableProvider.a("Alg.Alias.MessageDigest." + TeleTrusTObjectIdentifiers.d, "RIPEMD256");
            a(configurableProvider, "RIPEMD256", a + "$HashMac", a + "$KeyGenerator");
        }
    }

    private RIPEMD256() {
    }
}
