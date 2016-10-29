package org.spongycastle.jcajce.provider.digest;

import org.spongycastle.asn1.iana.IANAObjectIdentifiers;
import org.spongycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.digests.RIPEMD160Digest;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;

/* compiled from: Twttr */
public class RIPEMD160 {

    /* compiled from: Twttr */
    public class Digest extends BCMessageDigest implements Cloneable {
        public Digest() {
            super(new RIPEMD160Digest());
        }

        public Object clone() throws CloneNotSupportedException {
            Digest digest = (Digest) super.clone();
            digest.a = new RIPEMD160Digest((RIPEMD160Digest) this.a);
            return digest;
        }
    }

    /* compiled from: Twttr */
    public class HashMac extends BaseMac {
        public HashMac() {
            super(new HMac(new RIPEMD160Digest()));
        }
    }

    /* compiled from: Twttr */
    public class KeyGenerator extends BaseKeyGenerator {
        public KeyGenerator() {
            super("HMACRIPEMD160", 160, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends DigestAlgorithmProvider {
        private static final String a;

        static {
            a = RIPEMD160.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("MessageDigest.RIPEMD160", a + "$Digest");
            configurableProvider.a("Alg.Alias.MessageDigest." + TeleTrusTObjectIdentifiers.b, "RIPEMD160");
            a(configurableProvider, "RIPEMD160", a + "$HashMac", a + "$KeyGenerator");
            a(configurableProvider, "RIPEMD160", IANAObjectIdentifiers.q);
            configurableProvider.a("SecretKeyFactory.PBEWITHHMACRIPEMD160", a + "$PBEWithHmacKeyFactory");
            configurableProvider.a("Mac.PBEWITHHMACRIPEMD160", a + "$PBEWithHmac");
        }
    }

    /* compiled from: Twttr */
    public class PBEWithHmac extends BaseMac {
        public PBEWithHmac() {
            super(new HMac(new RIPEMD160Digest()), 2, 2, 160);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithHmacKeyFactory extends PBESecretKeyFactory {
        public PBEWithHmacKeyFactory() {
            super("PBEwithHmacRIPEMD160", null, false, 2, 2, 160, 0);
        }
    }

    private RIPEMD160() {
    }
}
