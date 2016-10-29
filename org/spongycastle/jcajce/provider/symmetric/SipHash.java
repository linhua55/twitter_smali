package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class SipHash {

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("SipHash", 128, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mac24 extends BaseMac {
        public Mac24() {
            super(new org.spongycastle.crypto.macs.SipHash());
        }
    }

    /* compiled from: Twttr */
    public class Mac48 extends BaseMac {
        public Mac48() {
            super(new org.spongycastle.crypto.macs.SipHash(4, 8));
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = SipHash.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Mac.SIPHASH-2-4", a + "$Mac24");
            configurableProvider.a("Alg.Alias.Mac.SIPHASH", "SIPHASH-2-4");
            configurableProvider.a("Mac.SIPHASH-4-8", a + "$Mac48");
            configurableProvider.a("KeyGenerator.SIPHASH", a + "$KeyGen");
            configurableProvider.a("Alg.Alias.KeyGenerator.SIPHASH-2-4", "SIPHASH");
            configurableProvider.a("Alg.Alias.KeyGenerator.SIPHASH-4-8", "SIPHASH");
        }
    }

    private SipHash() {
    }
}
