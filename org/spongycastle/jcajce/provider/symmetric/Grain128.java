package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.Grain128Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class Grain128 {

    /* compiled from: Twttr */
    public class Base extends BaseStreamCipher {
        public Base() {
            super(new Grain128Engine(), 12);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("Grain128", 128, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = Grain128.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.Grain128", a + "$Base");
            configurableProvider.a("KeyGenerator.Grain128", a + "$KeyGen");
        }
    }

    private Grain128() {
    }
}
