package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.SkipjackEngine;
import org.spongycastle.crypto.macs.CBCBlockCipherMac;
import org.spongycastle.crypto.macs.CFBBlockCipherMac;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class Skipjack {

    /* compiled from: Twttr */
    public class AlgParams extends IvAlgorithmParameters {
        protected String engineToString() {
            return "Skipjack IV";
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new SkipjackEngine());
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Skipjack", 80, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mac extends BaseMac {
        public Mac() {
            super(new CBCBlockCipherMac(new SkipjackEngine()));
        }
    }

    /* compiled from: Twttr */
    public class MacCFB8 extends BaseMac {
        public MacCFB8() {
            super(new CFBBlockCipherMac(new SkipjackEngine()));
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = Skipjack.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.SKIPJACK", a + "$ECB");
            configurableProvider.a("KeyGenerator.SKIPJACK", a + "$KeyGen");
            configurableProvider.a("AlgorithmParameters.SKIPJACK", a + "$AlgParams");
            configurableProvider.a("Mac.SKIPJACKMAC", a + "$Mac");
            configurableProvider.a("Alg.Alias.Mac.SKIPJACK", "SKIPJACKMAC");
            configurableProvider.a("Mac.SKIPJACKMAC/CFB8", a + "$MacCFB8");
            configurableProvider.a("Alg.Alias.Mac.SKIPJACK/CFB8", "SKIPJACKMAC/CFB8");
        }
    }

    private Skipjack() {
    }
}
