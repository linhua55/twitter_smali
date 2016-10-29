package org.spongycastle.jcajce.provider.symmetric;

import java.io.IOException;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.spongycastle.asn1.bc.BCObjectIdentifiers;
import org.spongycastle.asn1.cms.GCMParameters;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherKeyGenerator;
import org.spongycastle.crypto.engines.AESFastEngine;
import org.spongycastle.crypto.engines.AESWrapEngine;
import org.spongycastle.crypto.engines.RFC3211WrapEngine;
import org.spongycastle.crypto.engines.RFC5649WrapEngine;
import org.spongycastle.crypto.generators.Poly1305KeyGenerator;
import org.spongycastle.crypto.macs.CMac;
import org.spongycastle.crypto.macs.GMac;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.jcajce.provider.config.ConfigurableProvider;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameterGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BaseKeyGenerator;
import org.spongycastle.jcajce.provider.symmetric.util.BaseMac;
import org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher;
import org.spongycastle.jcajce.provider.symmetric.util.BlockCipherProvider;
import org.spongycastle.jcajce.provider.symmetric.util.IvAlgorithmParameters;
import org.spongycastle.jcajce.provider.symmetric.util.PBESecretKeyFactory;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public final class AES {
    private static final Class a;

    /* compiled from: Twttr */
    public class AESCMAC extends BaseMac {
        public AESCMAC() {
            super(new CMac(new AESFastEngine()));
        }
    }

    /* compiled from: Twttr */
    public class AESGMAC extends BaseMac {
        public AESGMAC() {
            super(new GMac(new GCMBlockCipher(new AESFastEngine())));
        }
    }

    /* compiled from: Twttr */
    public class AlgParamGen extends BaseAlgorithmParameterGenerator {
        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            throw new InvalidAlgorithmParameterException("No supported AlgorithmParameterSpec for AES parameter generation.");
        }

        protected AlgorithmParameters engineGenerateParameters() {
            byte[] bArr = new byte[16];
            if (this.b == null) {
                this.b = new SecureRandom();
            }
            this.b.nextBytes(bArr);
            try {
                AlgorithmParameters instance = AlgorithmParameters.getInstance("AES", "SC");
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
            return "AES IV";
        }
    }

    /* compiled from: Twttr */
    public class AlgParamsGCM extends BaseAlgorithmParameters {
        private GCMParameters a;

        protected void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (AES.a != null) {
                try {
                    this.a = new GCMParameters((byte[]) AES.a.getDeclaredMethod("getIV", new Class[0]).invoke(algorithmParameterSpec, new Object[0]), ((Integer) AES.a.getDeclaredMethod("getTLen", new Class[0]).invoke(algorithmParameterSpec, new Object[0])).intValue());
                } catch (Exception e) {
                    throw new InvalidParameterSpecException("Cannot process GCMParameterSpec.");
                }
            }
        }

        protected void engineInit(byte[] bArr) throws IOException {
            this.a = GCMParameters.a(bArr);
        }

        protected void engineInit(byte[] bArr, String str) throws IOException {
            if (a(str)) {
                this.a = GCMParameters.a(bArr);
                return;
            }
            throw new IOException("unknown format specified");
        }

        protected byte[] engineGetEncoded() throws IOException {
            return this.a.f();
        }

        protected byte[] engineGetEncoded(String str) throws IOException {
            if (a(str)) {
                return this.a.f();
            }
            throw new IOException("unknown format specified");
        }

        protected String engineToString() {
            return "GCM";
        }

        protected AlgorithmParameterSpec a(Class cls) throws InvalidParameterSpecException {
            if (AES.a != null) {
                try {
                    return (AlgorithmParameterSpec) AES.a.getConstructor(new Class[]{Integer.TYPE, byte[].class}).newInstance(new Object[]{Integers.a(this.a.b()), this.a.a()});
                } catch (NoSuchMethodException e) {
                    throw new InvalidParameterSpecException("no constructor found!");
                } catch (Exception e2) {
                    throw new InvalidParameterSpecException("construction failed: " + e2.getMessage());
                }
            }
            throw new InvalidParameterSpecException("unknown parameter spec: " + cls.getName());
        }
    }

    /* compiled from: Twttr */
    public class CBC extends BaseBlockCipher {
        public CBC() {
            super(new CBCBlockCipher(new AESFastEngine()), 128);
        }
    }

    /* compiled from: Twttr */
    public class CFB extends BaseBlockCipher {
        public CFB() {
            super(new BufferedBlockCipher(new CFBBlockCipher(new AESFastEngine(), 128)), 128);
        }
    }

    /* compiled from: Twttr */
    public class ECB extends BaseBlockCipher {
        public ECB() {
            super(new BlockCipherProvider() {
                public BlockCipher a() {
                    return new AESFastEngine();
                }
            });
        }
    }

    /* compiled from: Twttr */
    public class GCM extends BaseBlockCipher {
        public GCM() {
            super(new GCMBlockCipher(new AESFastEngine()));
        }
    }

    /* compiled from: Twttr */
    public class KeyGen extends BaseKeyGenerator {
        public KeyGen() {
            this(192);
        }

        public KeyGen(int i) {
            super("AES", i, new CipherKeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class KeyGen128 extends KeyGen {
        public KeyGen128() {
            super(128);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen192 extends KeyGen {
        public KeyGen192() {
            super(192);
        }
    }

    /* compiled from: Twttr */
    public class KeyGen256 extends KeyGen {
        public KeyGen256() {
            super(256);
        }
    }

    /* compiled from: Twttr */
    public class Mappings extends SymmetricAlgorithmProvider {
        private static final String a;

        static {
            a = AES.class.getName();
        }

        public void a(ConfigurableProvider configurableProvider) {
            configurableProvider.a("AlgorithmParameters.AES", a + "$AlgParams");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.42", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.k, "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.r, "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.y, "AES");
            configurableProvider.a("AlgorithmParameters.GCM", a + "$AlgParamsGCM");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.o, "GCM");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.v, "GCM");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + NISTObjectIdentifiers.C, "GCM");
            configurableProvider.a("AlgorithmParameterGenerator.AES", a + "$AlgParamGen");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator.2.16.840.1.101.3.4.42", "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.k, "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.r, "AES");
            configurableProvider.a("Alg.Alias.AlgorithmParameterGenerator." + NISTObjectIdentifiers.y, "AES");
            configurableProvider.a("Cipher.AES", a + "$ECB");
            configurableProvider.a("Alg.Alias.Cipher.2.16.840.1.101.3.4.2", "AES");
            configurableProvider.a("Alg.Alias.Cipher.2.16.840.1.101.3.4.22", "AES");
            configurableProvider.a("Alg.Alias.Cipher.2.16.840.1.101.3.4.42", "AES");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.j, a + "$ECB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.q, a + "$ECB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.x, a + "$ECB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.k, a + "$CBC");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.r, a + "$CBC");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.y, a + "$CBC");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.l, a + "$OFB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.s, a + "$OFB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.z, a + "$OFB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.m, a + "$CFB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.t, a + "$CFB");
            configurableProvider.a("Cipher." + NISTObjectIdentifiers.A, a + "$CFB");
            configurableProvider.a("Cipher.AESWRAP", a + "$Wrap");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.n, "AESWRAP");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.u, "AESWRAP");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.B, "AESWRAP");
            configurableProvider.a("Cipher.AESRFC3211WRAP", a + "$RFC3211Wrap");
            configurableProvider.a("Cipher.AESRFC5649WRAP", a + "$RFC5649Wrap");
            configurableProvider.a("Cipher.GCM", a + "$GCM");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.o, "GCM");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.v, "GCM");
            configurableProvider.a("Alg.Alias.Cipher." + NISTObjectIdentifiers.C, "GCM");
            configurableProvider.a("KeyGenerator.AES", a + "$KeyGen");
            configurableProvider.a("KeyGenerator.2.16.840.1.101.3.4.2", a + "$KeyGen128");
            configurableProvider.a("KeyGenerator.2.16.840.1.101.3.4.22", a + "$KeyGen192");
            configurableProvider.a("KeyGenerator.2.16.840.1.101.3.4.42", a + "$KeyGen256");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.j, a + "$KeyGen128");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.k, a + "$KeyGen128");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.l, a + "$KeyGen128");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.m, a + "$KeyGen128");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.q, a + "$KeyGen192");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.r, a + "$KeyGen192");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.s, a + "$KeyGen192");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.t, a + "$KeyGen192");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.x, a + "$KeyGen256");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.y, a + "$KeyGen256");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.z, a + "$KeyGen256");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.A, a + "$KeyGen256");
            configurableProvider.a("KeyGenerator.AESWRAP", a + "$KeyGen");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.n, a + "$KeyGen128");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.u, a + "$KeyGen192");
            configurableProvider.a("KeyGenerator." + NISTObjectIdentifiers.B, a + "$KeyGen256");
            configurableProvider.a("Mac.AESCMAC", a + "$AESCMAC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.l.a(), "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.m.a(), "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.n.a(), "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.o.a(), "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.p.a(), "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher." + BCObjectIdentifiers.q.a(), "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.a("Cipher.PBEWITHSHAAND128BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHSHAAND192BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHSHAAND256BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHSHA256AND128BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHSHA256AND192BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHSHA256AND256BITAES-CBC-BC", a + "$PBEWithAESCBC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.Cipher.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.a("Cipher.PBEWITHMD5AND128BITAES-CBC-OPENSSL", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHMD5AND192BITAES-CBC-OPENSSL", a + "$PBEWithAESCBC");
            configurableProvider.a("Cipher.PBEWITHMD5AND256BITAES-CBC-OPENSSL", a + "$PBEWithAESCBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHMD5AND128BITAES-CBC-OPENSSL", a + "$PBEWithMD5And128BitAESCBCOpenSSL");
            configurableProvider.a("SecretKeyFactory.PBEWITHMD5AND192BITAES-CBC-OPENSSL", a + "$PBEWithMD5And192BitAESCBCOpenSSL");
            configurableProvider.a("SecretKeyFactory.PBEWITHMD5AND256BITAES-CBC-OPENSSL", a + "$PBEWithMD5And256BitAESCBCOpenSSL");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHAAND128BITAES-CBC-BC", a + "$PBEWithSHAAnd128BitAESBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHAAND192BITAES-CBC-BC", a + "$PBEWithSHAAnd192BitAESBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHAAND256BITAES-CBC-BC", a + "$PBEWithSHAAnd256BitAESBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHA256AND128BITAES-CBC-BC", a + "$PBEWithSHA256And128BitAESBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHA256AND192BITAES-CBC-BC", a + "$PBEWithSHA256And192BitAESBC");
            configurableProvider.a("SecretKeyFactory.PBEWITHSHA256AND256BITAES-CBC-BC", a + "$PBEWithSHA256And256BitAESBC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND128BITAES-CBC-BC", "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND192BITAES-CBC-BC", "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-1AND256BITAES-CBC-BC", "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND128BITAES-CBC-BC", "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND192BITAES-CBC-BC", "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory.PBEWITHSHA-256AND256BITAES-CBC-BC", "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.l.a(), "PBEWITHSHAAND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.m.a(), "PBEWITHSHAAND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.n.a(), "PBEWITHSHAAND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.o.a(), "PBEWITHSHA256AND128BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.p.a(), "PBEWITHSHA256AND192BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.SecretKeyFactory." + BCObjectIdentifiers.q.a(), "PBEWITHSHA256AND256BITAES-CBC-BC");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHAAND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-1AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND128BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND192BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters.PBEWITHSHA-256AND256BITAES-CBC-BC", "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.l.a(), "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.m.a(), "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.n.a(), "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.o.a(), "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.p.a(), "PKCS12PBE");
            configurableProvider.a("Alg.Alias.AlgorithmParameters." + BCObjectIdentifiers.q.a(), "PKCS12PBE");
            a(configurableProvider, "AES", a + "$AESGMAC", a + "$KeyGen128");
            b(configurableProvider, "AES", a + "$Poly1305", a + "$Poly1305KeyGen");
        }
    }

    /* compiled from: Twttr */
    public class OFB extends BaseBlockCipher {
        public OFB() {
            super(new BufferedBlockCipher(new OFBBlockCipher(new AESFastEngine(), 128)), 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithAESCBC extends BaseBlockCipher {
        public PBEWithAESCBC() {
            super(new CBCBlockCipher(new AESFastEngine()));
        }
    }

    /* compiled from: Twttr */
    public class PBEWithMD5And128BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And128BitAESCBCOpenSSL() {
            super("PBEWithMD5And128BitAES-CBC-OpenSSL", null, true, 3, 0, 128, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithMD5And192BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And192BitAESCBCOpenSSL() {
            super("PBEWithMD5And192BitAES-CBC-OpenSSL", null, true, 3, 0, 192, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithMD5And256BitAESCBCOpenSSL extends PBESecretKeyFactory {
        public PBEWithMD5And256BitAESCBCOpenSSL() {
            super("PBEWithMD5And256BitAES-CBC-OpenSSL", null, true, 3, 0, 256, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHA256And128BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And128BitAESBC() {
            super("PBEWithSHA256And128BitAES-CBC-BC", null, true, 2, 4, 128, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHA256And192BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And192BitAESBC() {
            super("PBEWithSHA256And192BitAES-CBC-BC", null, true, 2, 4, 192, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHA256And256BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHA256And256BitAESBC() {
            super("PBEWithSHA256And256BitAES-CBC-BC", null, true, 2, 4, 256, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHAAnd128BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd128BitAESBC() {
            super("PBEWithSHA1And128BitAES-CBC-BC", null, true, 2, 1, 128, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHAAnd192BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd192BitAESBC() {
            super("PBEWithSHA1And192BitAES-CBC-BC", null, true, 2, 1, 192, 128);
        }
    }

    /* compiled from: Twttr */
    public class PBEWithSHAAnd256BitAESBC extends PBESecretKeyFactory {
        public PBEWithSHAAnd256BitAESBC() {
            super("PBEWithSHA1And256BitAES-CBC-BC", null, true, 2, 1, 256, 128);
        }
    }

    /* compiled from: Twttr */
    public class Poly1305 extends BaseMac {
        public Poly1305() {
            super(new org.spongycastle.crypto.macs.Poly1305(new AESFastEngine()));
        }
    }

    /* compiled from: Twttr */
    public class Poly1305KeyGen extends BaseKeyGenerator {
        public Poly1305KeyGen() {
            super("Poly1305-AES", 256, new Poly1305KeyGenerator());
        }
    }

    /* compiled from: Twttr */
    public class RFC3211Wrap extends BaseWrapCipher {
        public RFC3211Wrap() {
            super(new RFC3211WrapEngine(new AESFastEngine()), 16);
        }
    }

    /* compiled from: Twttr */
    public class RFC5649Wrap extends BaseWrapCipher {
        public RFC5649Wrap() {
            super(new RFC5649WrapEngine(new AESFastEngine()));
        }
    }

    /* compiled from: Twttr */
    public class Wrap extends BaseWrapCipher {
        public Wrap() {
            super(new AESWrapEngine());
        }
    }

    static {
        a = a("javax.crypto.spec.GCMParameterSpec");
    }

    private AES() {
    }

    private static Class a(String str) {
        try {
            return AES.class.getClassLoader().loadClass(str);
        } catch (Exception e) {
            return null;
        }
    }
}
