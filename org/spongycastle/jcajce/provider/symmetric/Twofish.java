package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.TwofishEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;

/* compiled from: Twttr */
public final class Twofish {

    /* compiled from: Twttr */
    public class AlgParams extends IvAlgorithmParameters {
        protected String engineToString() {
            return "Twofish IV";
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() {
                public BlockCipher a() {
                    return new TwofishEngine();
                }
            });
        }
    }

    /* compiled from: Twttr */
    public class GMAC extends BaseMac {
        public GMAC() {
            super(new GMac(new GCMBlockCipher(new TwofishEngine())));
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Twofish", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends SymmetricAlgorithmProvider {
        private static final String a;

        static {
            a = Twofish.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.Twofish", a + "$ECB");
            configurableProvider.a("KeyGenerator.Twofish", a + "$KeyGen");
            configurableProvider.a("AlgorithmParameters.Twofish", a + "$AlgParams");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHAANDTWOFISH-CBC", "PKCS12PBE");
            configurableProvider.a("Cipher.PBEWITHSHAANDTWOFISH-CBC", a + "$PBEWithSHA");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHAANDTWOFISH-CBC", a + "$PBEWithSHAKeyFactory");
            a(configurableProvider, "Twofish", a + "$GMAC", a + "$KeyGen");
            b(configurableProvider, "Twofish", a + "$Poly1305", a + "$Poly1305KeyGen");
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHA extends BaseBlockCipher {
        public PBEWithSHA() {
            super(new CBCBlockCipher(new TwofishEngine()));
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHAKeyFactory extends PBESecretKeyFactory {
        public PBEWithSHAKeyFactory() {
            super("PBEwithSHAandTwofish-CBC", null, true, 2, 1, 256, 128);
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
            super("Poly1305-Twofish", 256, new Poly1305KeyGenerator());
        }
    }

    private Twofish() {
    }
}
