package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.misc.CAST5CBCParameters;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.CAST5Engine;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.util.AlgorithmProvider;

/* compiled from: Twttr */
public final class CAST5 {

    /* compiled from: Twttr */
    public class AlgParamGen extends BaseAlgorithmParameterGenerator {
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for CAST5 parameter generation.");
        }

        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[8];
            if (this.b == null) {
                this.b = new SecureRandom();
            }
            this.b.nextBytes(bArr);
            try {
                AlgorithmParameters instance = AlgorithmParameters.getInstance("CAST5", "SC");
                instance.init(new IvParameterSpec(bArr));
                return instance;
            } catch (Exception e) {
                throw new RuntimeException(e.getMessage());
            }
        }
    }

    /* compiled from: Twttr */
    public class AlgParams extends BaseAlgorithmParameters {
        private byte[] a;
        private int b;

        public AlgParams() {
            this.b = 128;
        }

        protected byte[] engineGetEncoded() {
            Object obj = new byte[this.a.length];
            System.arraycopy(this.a, 0, obj, 0, this.a.length);
            return obj;
        }

        protected byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return new CAST5CBCParameters(engineGetEncoded(), this.b).f();
            }
            if (str.equals("RAW")) {
                return engineGetEncoded();
            }
            return null;
        }

        protected AlgorithmParameterSpec a(Class cls) throws InvalidParameterSpecException {
            if (cls == IvParameterSpec.class) {
                return new IvParameterSpec(this.a);
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to CAST5 parameters object.");
        }

        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.a = ((IvParameterSpec) algorithmParameterSpec).getIV();
                return;
            }
            throw new InvalidParameterSpecException("IvParameterSpec required to initialise a CAST5 parameters algorithm parameters object");
        }

        protected void engineInit(byte[] bArr) throws IOException {
            this.a = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.a, 0, this.a.length);
        }

        protected void engineInit(byte[] bArr, String str) throws IOException {
            if (a(str)) {
                CAST5CBCParameters a = CAST5CBCParameters.a(new ASN1InputStream(bArr).d());
                this.b = a.b();
                this.a = a.a();
            } else if (str.equals("RAW")) {
                engineInit(bArr);
            } else {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
        }

        protected String engineToString() {
            return "CAST5 Parameters";
        }
    }

    /* compiled from: Twttr */
    public class CBC extends BaseBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new CAST5Engine()), 64);
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new CAST5Engine());
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            super("CAST5", 128, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends AlgorithmProvider {
        private static final String a;

        static {
            a = CAST5.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("AlgorithmParameters.CAST5", a + "$AlgParams");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.1.2.840.113533.7.66.10", "CAST5");
            configurableProvider.a("AlgorithmParameterGenerator.CAST5", a + "$AlgParamGen");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator.1.2.840.113533.7.66.10", "CAST5");
            configurableProvider.a("Cipher.CAST5", a + "$ECB");
            configurableProvider.a("Cipher.1.2.840.113533.7.66.10", a + "$CBC");
            configurableProvider.a("KeyGenerator.CAST5", a + "$KeyGen");
            configurableProvider.a("Alg.Alias.KeyGenerator.1.2.840.113533.7.66.10", "CAST5");
        }
    }

    private CAST5() {
    }
}
