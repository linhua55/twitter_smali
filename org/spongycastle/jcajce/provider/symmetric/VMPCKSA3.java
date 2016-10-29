package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.VMPCKSA3Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class VMPCKSA3 {

    /* compiled from: Twttr */
    public class Base extends BaseStreamCipher {
        public Base() {
            super(new VMPCKSA3Engine(), 16);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("VMPC-KSA3", 128, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = VMPCKSA3.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.VMPC-KSA3", a + "$Base");
            configurableProvider.a("KeyGenerator.VMPC-KSA3", a + "$KeyGen");
        }
    }

    private VMPCKSA3() {
    }
}
