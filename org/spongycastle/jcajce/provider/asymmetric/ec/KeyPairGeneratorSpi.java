package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidParameterException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.ECGenParameterSpec;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.AsymmetricCipherKeyPair;
import org.spongycastle.crypto.generators.ECKeyPairGenerator;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECKeyGenerationParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveGenParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.jce.spec.ECParameterSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public abstract class KeyPairGeneratorSpi extends KeyPairGenerator {

    /* compiled from: Twttr */
    public class EC extends KeyPairGeneratorSpi {
        private static Hashtable j;
        ECKeyGenerationParameters a;
        ECKeyPairGenerator b;
        Object c;
        int d;
        int e;
        SecureRandom f;
        boolean g;
        String h;
        ProviderConfiguration i;

        static {
            j = new Hashtable();
            j.put(Integers.a(192), new ECGenParameterSpec("prime192v1"));
            j.put(Integers.a(239), new ECGenParameterSpec("prime239v1"));
            j.put(Integers.a(256), new ECGenParameterSpec("prime256v1"));
            j.put(Integers.a(224), new ECGenParameterSpec("P-224"));
            j.put(Integers.a(384), new ECGenParameterSpec("P-384"));
            j.put(Integers.a(521), new ECGenParameterSpec("P-521"));
        }

        public EC() {
            super("EC");
            this.b = new ECKeyPairGenerator();
            this.c = null;
            this.d = 239;
            this.e = 50;
            this.f = new SecureRandom();
            this.g = false;
            this.h = "EC";
            this.i = BouncyCastleProvider.a;
        }

        public EC(String str, ProviderConfiguration providerConfiguration) {
            super(str);
            this.b = new ECKeyPairGenerator();
            this.c = null;
            this.d = 239;
            this.e = 50;
            this.f = new SecureRandom();
            this.g = false;
            this.h = str;
            this.i = providerConfiguration;
        }

        public void initialize(int i, SecureRandom secureRandom) {
            this.d = i;
            this.f = secureRandom;
            AlgorithmParameterSpec algorithmParameterSpec = (ECGenParameterSpec) j.get(Integers.a(i));
            if (algorithmParameterSpec == null) {
                throw new InvalidParameterException("unknown key size.");
            }
            try {
                initialize(algorithmParameterSpec, secureRandom);
            } catch (InvalidAlgorithmParameterException e) {
                throw new InvalidParameterException("key size not configurable.");
            }
        }

        public void initialize(AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            if (algorithmParameterSpec == null) {
                ECParameterSpec a = this.i.a();
                if (a == null) {
                    throw new InvalidAlgorithmParameterException("null parameter passed but no implicitCA set");
                }
                this.c = null;
                this.a = a(a, secureRandom);
            } else if (algorithmParameterSpec instanceof ECParameterSpec) {
                this.c = algorithmParameterSpec;
                this.a = a((ECParameterSpec) algorithmParameterSpec, secureRandom);
            } else if (algorithmParameterSpec instanceof java.security.spec.ECParameterSpec) {
                this.c = algorithmParameterSpec;
                this.a = a((java.security.spec.ECParameterSpec) algorithmParameterSpec, secureRandom);
            } else if (algorithmParameterSpec instanceof ECGenParameterSpec) {
                a(((ECGenParameterSpec) algorithmParameterSpec).getName(), secureRandom);
            } else if (algorithmParameterSpec instanceof ECNamedCurveGenParameterSpec) {
                a(((ECNamedCurveGenParameterSpec) algorithmParameterSpec).a(), secureRandom);
            } else {
                throw new InvalidAlgorithmParameterException("parameter object not a ECParameterSpec");
            }
            this.b.a(this.a);
            this.g = true;
        }

        public KeyPair generateKeyPair() {
            if (!this.g) {
                initialize(this.d, new SecureRandom());
            }
            AsymmetricCipherKeyPair a = this.b.a();
            ECPublicKeyParameters eCPublicKeyParameters = (ECPublicKeyParameters) a.a();
            ECPrivateKeyParameters eCPrivateKeyParameters = (ECPrivateKeyParameters) a.b();
            BCECPublicKey bCECPublicKey;
            if (this.c instanceof ECParameterSpec) {
                ECParameterSpec eCParameterSpec = (ECParameterSpec) this.c;
                bCECPublicKey = new BCECPublicKey(this.h, eCPublicKeyParameters, eCParameterSpec, this.i);
                return new KeyPair(bCECPublicKey, new BCECPrivateKey(this.h, eCPrivateKeyParameters, bCECPublicKey, eCParameterSpec, this.i));
            } else if (this.c == null) {
                return new KeyPair(new BCECPublicKey(this.h, eCPublicKeyParameters, this.i), new BCECPrivateKey(this.h, eCPrivateKeyParameters, this.i));
            } else {
                java.security.spec.ECParameterSpec eCParameterSpec2 = (java.security.spec.ECParameterSpec) this.c;
                bCECPublicKey = new BCECPublicKey(this.h, eCPublicKeyParameters, eCParameterSpec2, this.i);
                return new KeyPair(bCECPublicKey, new BCECPrivateKey(this.h, eCPrivateKeyParameters, bCECPublicKey, eCParameterSpec2, this.i));
            }
        }

        protected ECKeyGenerationParameters a(ECParameterSpec eCParameterSpec, SecureRandom secureRandom) {
            return new ECKeyGenerationParameters(new ECDomainParameters(eCParameterSpec.b(), eCParameterSpec.c(), eCParameterSpec.d()), secureRandom);
        }

        protected ECKeyGenerationParameters a(java.security.spec.ECParameterSpec eCParameterSpec, SecureRandom secureRandom) {
            ECCurve a = EC5Util.a(eCParameterSpec.getCurve());
            return new ECKeyGenerationParameters(new ECDomainParameters(a, EC5Util.a(a, eCParameterSpec.getGenerator(), false), eCParameterSpec.getOrder(), BigInteger.valueOf((long) eCParameterSpec.getCofactor())), secureRandom);
        }

        protected ECNamedCurveSpec a(String str) throws InvalidAlgorithmParameterException {
            X9ECParameters x9ECParameters;
            X9ECParameters a = ECNamedCurveTable.a(str);
            if (a == null) {
                try {
                    a = ECNamedCurveTable.a(new ASN1ObjectIdentifier(str));
                    if (a == null) {
                        throw new InvalidAlgorithmParameterException("unknown curve OID: " + str);
                    }
                    x9ECParameters = a;
                } catch (IllegalArgumentException e) {
                    throw new InvalidAlgorithmParameterException("unknown curve name: " + str);
                }
            }
            x9ECParameters = a;
            return new ECNamedCurveSpec(str, x9ECParameters.a(), x9ECParameters.b(), x9ECParameters.c(), x9ECParameters.e(), null);
        }

        protected void a(String str, SecureRandom secureRandom) throws InvalidAlgorithmParameterException {
            java.security.spec.ECParameterSpec a = a(str);
            this.c = a;
            this.a = a(a, secureRandom);
        }
    }

    /* compiled from: Twttr */
    public class ECDH extends EC {
        public ECDH() {
            super("ECDH", BouncyCastleProvider.a);
        }
    }

    /* compiled from: Twttr */
    public class ECDHC extends EC {
        public ECDHC() {
            super("ECDHC", BouncyCastleProvider.a);
        }
    }

    /* compiled from: Twttr */
    public class ECDSA extends EC {
        public ECDSA() {
            super("ECDSA", BouncyCastleProvider.a);
        }
    }

    /* compiled from: Twttr */
    public class ECMQV extends EC {
        public ECMQV() {
            super("ECMQV", BouncyCastleProvider.a);
        }
    }

    public KeyPairGeneratorSpi(String str) {
        super(str);
    }
}
