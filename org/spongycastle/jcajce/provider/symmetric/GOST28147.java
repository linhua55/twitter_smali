package org.spongycastle.jcajce.provider.symmetric;

import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.GOST28147Engine;
import org.spongycastle.crypto.macs.GOST28147Mac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.GCFBBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class GOST28147 {

    /* compiled from: Twttr */
    public class AlgParamGen extends BaseAlgorithmParameterGenerator {
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for GOST28147 parameter generation.");
        }

        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.b == null) {
                this.b = new SecureRandom();
            }
            this.b.nextBytes(bArr);
            try {
                AlgorithmParameters instance = AlgorithmParameters.getInstance("GOST28147", "SC");
                instance.init(new IvParameterSpec(bArr));
                return instance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    }

    /* compiled from: Twttr */
    public class AlgParams extends IvAlgorithmParameters {
        protected String engineToString() {
            return "GOST IV";
        }
    }

    /* compiled from: Twttr */
    public class CBC extends BaseBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new GOST28147Engine()), 64);
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new GOST28147Engine());
        }
    }

    /* compiled from: Twttr */
    public class GCFB extends BaseBlockCipher {
        public GCFB() {
            super(new BufferedBlockCipher(new GCFBBlockCipher(new GOST28147Engine())), 64);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            this(256);
        }

        public KeyGen(int i) {
            super("GOST28147", i, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mac extends BaseMac {
        public Mac() {
            super(new GOST28147Mac());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = GOST28147.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("Cipher.GOST28147", a + "$ECB");
            configurableProvider.a("Alg.Alias.Cipher.GOST", "GOST28147");
            configurableProvider.a("Alg.Alias.Cipher.GOST-28147", "GOST28147");
            configurableProvider.a("Cipher." + CryptoProObjectIdentifiers.d, a + "$GCFB");
            configurableProvider.a("KeyGenerator.GOST28147", a + "$KeyGen");
            configurableProvider.a("Alg.Alias.KeyGenerator.GOST", "GOST28147");
            configurableProvider.a("Alg.Alias.KeyGenerator.GOST-28147", "GOST28147");
            configurableProvider.a("Alg.Alias.KeyGenerator." + CryptoProObjectIdentifiers.d, "GOST28147");
            configurableProvider.a("Mac.GOST28147MAC", a + "$Mac");
            configurableProvider.a("Alg.Alias.Mac.GOST28147", "GOST28147MAC");
        }
    }

    private GOST28147() {
    }
}
