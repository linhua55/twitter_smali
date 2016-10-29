package org.spongycastle.jcajce.provider.symmetric;

import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.XSalsa20Engine;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseStreamCipher;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class XSalsa20 {

    /* compiled from: Twttr */
    public class Base extends BaseStreamCipher {
        public Base() {
            super(new XSalsa20Engine(), 24);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("XSalsa20", 256, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = XSalsa20.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.XSALSA20", a + "$Base");
            configurableProvider.a("KeyGenerator.XSALSA20", a + "$KeyGen");
        }
    }

    private XSalsa20() {
    }
}
