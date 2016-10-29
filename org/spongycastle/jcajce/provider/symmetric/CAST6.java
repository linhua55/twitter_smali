package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.CAST6Engine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;

/* compiled from: Twttr */
public final class CAST6 {

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() {
                public BlockCipher a() {
                    return new CAST6Engine();
                }
            });
        }
    }

    /* compiled from: Twttr */
    public class GMAC extends BaseMac {
        public GMAC() {
            super(new GMac(new GCMBlockCipher(new CAST6Engine())));
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("CAST6", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends SymmetricAlgorithmProvider {
        private static final String a;

        static {
            a = CAST6.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.CAST6", a + "$ECB");
            configurableProvider.a("KeyGenerator.CAST6", a + "$KeyGen");
            a(configurableProvider, "CAST6", a + "$GMAC", a + "$KeyGen");
            b(configurableProvider, "CAST6", a + "$Poly1305", a + "$Poly1305KeyGen");
        }
    }

    /* compiled from: Twttr */
    public class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.spongycastle.crypto.macs.Poly1305(new CAST6Engine()));
        }
    }

    /* compiled from: Twttr */
    public class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-CAST6", 256, new Poly1305KeyGenerator());
        }
    }

    private CAST6() {
    }
}
