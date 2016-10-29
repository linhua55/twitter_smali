package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.SerpentEngine;
import org.spongycastle.crypto.engines.TwofishEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;

/* compiled from: Twttr */
public final class Serpent {

    /* compiled from: Twttr */
    public class AlgParams extends IvAlgorithmParameters {
        protected String engineToString() {
            return "Serpent IV";
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() {
                public BlockCipher a() {
                    return new SerpentEngine();
                }
            });
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Serpent", 192, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends SymmetricAlgorithmProvider {
        private static final String a;

        static {
            a = Serpent.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.Serpent", a + "$ECB");
            configurableProvider.a("KeyGenerator.Serpent", a + "$KeyGen");
            configurableProvider.a("AlgorithmParameters.Serpent", a + "$AlgParams");
            a(configurableProvider, "SERPENT", a + "$SerpentGMAC", a + "$KeyGen");
            b(configurableProvider, "SERPENT", a + "$Poly1305", a + "$Poly1305KeyGen");
        }
    }

    /* compiled from: Twttr */
    public class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.spongycastle.crypto.macs.Poly1305(new TwofishEngine()));
        }
    }

    /* compiled from: Twttr */
    public class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-Serpent", 256, new Poly1305KeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class SerpentGMAC extends BaseMac {
        public SerpentGMAC() {
            super(new GMac(new GCMBlockCipher(new SerpentEngine())));
        }
    }

    private Serpent() {
    }
}
