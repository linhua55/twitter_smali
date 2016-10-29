package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.SHA512Digest;
import org.spongycastle.crypto.digests.SHA512tDigest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.macs.OldHMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;

/* compiled from: Twttr */
public class SHA512 {

    /* compiled from: Twttr */
    public class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new SHA512Digest());
        }

        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.a = new SHA512Digest((SHA512Digest) this.a);
            return digest;
        }
    }

    /* compiled from: Twttr */
    public class DigestT extends BCMessageDigest implements Cloneable {
        public DigestT(int i) {
            super(new SHA512tDigest(i));
        }

        public Object clone() throws CloneNotSupportedException {
            DigestT digestT = (DigestT) super.clone();
            digestT.a = new SHA512tDigest((SHA512tDigest) this.a);
            return digestT;
        }
    }

    /* compiled from: Twttr */
    public class DigestT224 extends DigestT {
        public DigestT224() {
            super(224);
        }
    }

    /* compiled from: Twttr */
    public class DigestT256 extends DigestT {
        public DigestT256() {
            super(256);
        }
    }

    /* compiled from: Twttr */
    public class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new SHA512Digest()));
        }
    }

    /* compiled from: Twttr */
    public class HashMacT224 extends BaseMac {
        public HashMacT224() {
            super(new HMac(new SHA512tDigest(224)));
        }
    }

    /* compiled from: Twttr */
    public class HashMacT256 extends BaseMac {
        public HashMacT256() {
            super(new HMac(new SHA512tDigest(256)));
        }
    }

    /* compiled from: Twttr */
    public class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACSHA512", 512, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class KeyGeneratorT224 extends BaseKeyGenerator {
        public KeyGeneratorT224() {
            super("HMACSHA512/224", 224, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class KeyGeneratorT256 extends BaseKeyGenerator {
        public KeyGeneratorT256() {
            super("HMACSHA512/256", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends DigestAlgorithmProvider {
        private static final String a;

        static {
            a = SHA512.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("MessageDigest.SHA-512", a + "$Digest");
            configurableProvider.a("Alg.Alias.MessageDigest.SHA512", "SHA-512");
            configurableProvider.a("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.e, "SHA-512");
            configurableProvider.a("MessageDigest.SHA-512/224", a + "$DigestT224");
            configurableProvider.a("Alg.Alias.MessageDigest.SHA512/224", "SHA-512/224");
            configurableProvider.a("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.g, "SHA-512/224");
            configurableProvider.a("MessageDigest.SHA-512/256", a + "$DigestT256");
            configurableProvider.a("Alg.Alias.MessageDigest.SHA512256", "SHA-512/256");
            configurableProvider.a("Alg.Alias.MessageDigest." + NISTObjectIdentifiers.h, "SHA-512/256");
            configurableProvider.a("Mac.OLDHMACSHA512", a + "$OldSHA512");
            a(configurableProvider, "SHA512", a + "$HashMac", a + "$KeyGenerator");
            a(configurableProvider, "SHA512", PKCSObjectIdentifiers.M);
            a(configurableProvider, "SHA512/224", a + "$HashMacT224", a + "$KeyGeneratorT224");
            a(configurableProvider, "SHA512/256", a + "$HashMacT256", a + "$KeyGeneratorT256");
        }
    }

    /* compiled from: Twttr */
    public class OldSHA512 extends BaseMac {
        public OldSHA512() {
            super(new OldHMac(new SHA512Digest()));
        }
    }

    private SHA512() {
    }
}
