package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.HC256Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class HC256 {

    /* compiled from: Twttr */
    public class Base extends BaseStreamCipher {
        public Base() {
            super(new HC256Engine(), 32);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("HC256", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = HC256.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.HC256", a + "$Base");
            configurableProvider.a("KeyGenerator.HC256", a + "$KeyGen");
        }
    }

    private HC256() {
    }
}
