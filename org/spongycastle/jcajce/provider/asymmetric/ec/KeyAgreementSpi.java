package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import java.util.Hashtable;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.spec.SecretKeySpec;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.crypto.BasicAgreement;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DerivationFunction;
import org.spongycastle.crypto.DerivationParameters;
import org.spongycastle.crypto.agreement.ECDHBasicAgreement;
import org.spongycastle.crypto.agreement.ECDHCBasicAgreement;
import org.spongycastle.crypto.agreement.ECMQVBasicAgreement;
import org.spongycastle.crypto.agreement.kdf.DHKDFParameters;
import org.spongycastle.crypto.agreement.kdf.ECDHKEKGenerator;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.crypto.params.DESParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.crypto.params.MQVPrivateParameters;
import org.spongycastle.crypto.params.MQVPublicParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jce.interfaces.ECPrivateKey;
import org.spongycastle.jce.interfaces.ECPublicKey;
import org.spongycastle.jce.interfaces.MQVPrivateKey;
import org.spongycastle.jce.interfaces.MQVPublicKey;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;

/* compiled from: Twttr */
public class KeyAgreementSpi extends javax.crypto.KeyAgreementSpi {
    private static final X9IntegerConverter a;
    private static final Hashtable b;
    private static final Hashtable c;
    private static final Hashtable d;
    private String e;
    private BigInteger f;
    private ECDomainParameters g;
    private BasicAgreement h;
    private DerivationFunction i;

    /* compiled from: Twttr */
    public class DH extends KeyAgreementSpi {
        public DH() {
            super("ECDH", new ECDHBasicAgreement(), null);
        }
    }

    /* compiled from: Twttr */
    public class DHC extends KeyAgreementSpi {
        public DHC() {
            super("ECDHC", new ECDHCBasicAgreement(), null);
        }
    }

    /* compiled from: Twttr */
    public class DHwithSHA1KDF extends KeyAgreementSpi {
        public DHwithSHA1KDF() {
            super("ECDHwithSHA1KDF", new ECDHBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
        }
    }

    /* compiled from: Twttr */
    public class MQV extends KeyAgreementSpi {
        public MQV() {
            super("ECMQV", new ECMQVBasicAgreement(), null);
        }
    }

    /* compiled from: Twttr */
    public class MQVwithSHA1KDF extends KeyAgreementSpi {
        public MQVwithSHA1KDF() {
            super("ECMQVwithSHA1KDF", new ECMQVBasicAgreement(), new ECDHKEKGenerator(new SHA1Digest()));
        }
    }

    static {
        a = new X9IntegerConverter();
        b = new Hashtable();
        c = new Hashtable();
        d = new Hashtable();
        Integer a = Integers.a(64);
        Integer a2 = Integers.a(128);
        Integer a3 = Integers.a(192);
        Integer a4 = Integers.a(256);
        b.put(NISTObjectIdentifiers.k.a(), a2);
        b.put(NISTObjectIdentifiers.r.a(), a3);
        b.put(NISTObjectIdentifiers.y.a(), a4);
        b.put(NISTObjectIdentifiers.n.a(), a2);
        b.put(NISTObjectIdentifiers.u.a(), a3);
        b.put(NISTObjectIdentifiers.B.a(), a4);
        b.put(PKCSObjectIdentifiers.bB.a(), a3);
        b.put(PKCSObjectIdentifiers.B.a(), a3);
        b.put(OIWObjectIdentifiers.e.a(), a);
        c.put("DESEDE", PKCSObjectIdentifiers.B);
        c.put("AES", NISTObjectIdentifiers.y);
        c.put("DES", OIWObjectIdentifiers.e);
        d.put("DES", "DES");
        d.put("DESEDE", "DES");
        d.put(OIWObjectIdentifiers.e.a(), "DES");
        d.put(PKCSObjectIdentifiers.B.a(), "DES");
        d.put(PKCSObjectIdentifiers.bB.a(), "DES");
    }

    private byte[] a(BigInteger bigInteger) {
        return a.a(bigInteger, a.a(this.g.a()));
    }

    protected KeyAgreementSpi(String str, BasicAgreement basicAgreement, DerivationFunction derivationFunction) {
        this.e = str;
        this.h = basicAgreement;
        this.i = derivationFunction;
    }

    protected Key engineDoPhase(Key key, boolean z) throws InvalidKeyException, IllegalStateException {
        if (this.g == null) {
            throw new IllegalStateException(this.e + " not initialised.");
        } else if (z) {
            CipherParameters mQVPublicParameters;
            if (this.h instanceof ECMQVBasicAgreement) {
                if (key instanceof MQVPublicKey) {
                    MQVPublicKey mQVPublicKey = (MQVPublicKey) key;
                    mQVPublicParameters = new MQVPublicParameters((ECPublicKeyParameters) ECUtil.a(mQVPublicKey.a()), (ECPublicKeyParameters) ECUtil.a(mQVPublicKey.b()));
                } else {
                    throw new InvalidKeyException(this.e + " key agreement requires " + a(MQVPublicKey.class) + " for doPhase");
                }
            } else if (key instanceof PublicKey) {
                mQVPublicParameters = ECUtil.a((PublicKey) key);
            } else {
                throw new InvalidKeyException(this.e + " key agreement requires " + a(ECPublicKey.class) + " for doPhase");
            }
            this.f = this.h.b(mQVPublicParameters);
            return null;
        } else {
            throw new IllegalStateException(this.e + " can only be between two parties.");
        }
    }

    protected byte[] engineGenerateSecret() throws IllegalStateException {
        if (this.i == null) {
            return a(this.f);
        }
        throw new UnsupportedOperationException("KDF can only be used when algorithm is known");
    }

    protected int engineGenerateSecret(byte[] bArr, int i) throws IllegalStateException, ShortBufferException {
        Object engineGenerateSecret = engineGenerateSecret();
        if (bArr.length - i < engineGenerateSecret.length) {
            throw new ShortBufferException(this.e + " key agreement: need " + engineGenerateSecret.length + " bytes");
        }
        System.arraycopy(engineGenerateSecret, 0, bArr, i, engineGenerateSecret.length);
        return engineGenerateSecret.length;
    }

    protected SecretKey engineGenerateSecret(String str) throws NoSuchAlgorithmException {
        String a;
        byte[] bArr;
        Object a2 = a(this.f);
        String b = Strings.b(str);
        if (c.containsKey(b)) {
            a = ((ASN1ObjectIdentifier) c.get(b)).a();
        } else {
            a = str;
        }
        if (this.i != null) {
            if (b.containsKey(a)) {
                int intValue = ((Integer) b.get(a)).intValue();
                DerivationParameters dHKDFParameters = new DHKDFParameters(new ASN1ObjectIdentifier(a), intValue, a2);
                bArr = new byte[(intValue / 8)];
                this.i.a(dHKDFParameters);
                this.i.a(bArr, 0, bArr.length);
            } else {
                throw new NoSuchAlgorithmException("unknown algorithm encountered: " + str);
            }
        } else if (b.containsKey(a)) {
            bArr = new byte[(((Integer) b.get(a)).intValue() / 8)];
            System.arraycopy(a2, 0, bArr, 0, bArr.length);
        } else {
            Object obj = a2;
        }
        if (d.containsKey(a)) {
            DESParameters.a(bArr);
        }
        return new SecretKeySpec(bArr, str);
    }

    protected void engineInit(Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        if (algorithmParameterSpec != null) {
            throw new InvalidAlgorithmParameterException("No algorithm parameters supported");
        }
        a(key);
    }

    protected void engineInit(Key key, SecureRandom secureRandom) throws InvalidKeyException {
        a(key);
    }

    private void a(Key key) throws InvalidKeyException {
        ECPrivateKeyParameters eCPrivateKeyParameters;
        if (this.h instanceof ECMQVBasicAgreement) {
            if (key instanceof MQVPrivateKey) {
                MQVPrivateKey mQVPrivateKey = (MQVPrivateKey) key;
                eCPrivateKeyParameters = (ECPrivateKeyParameters) ECUtil.a(mQVPrivateKey.a());
                ECPrivateKeyParameters eCPrivateKeyParameters2 = (ECPrivateKeyParameters) ECUtil.a(mQVPrivateKey.b());
                ECPublicKeyParameters eCPublicKeyParameters = null;
                if (mQVPrivateKey.c() != null) {
                    eCPublicKeyParameters = (ECPublicKeyParameters) ECUtil.a(mQVPrivateKey.c());
                }
                CipherParameters mQVPrivateParameters = new MQVPrivateParameters(eCPrivateKeyParameters, eCPrivateKeyParameters2, eCPublicKeyParameters);
                this.g = eCPrivateKeyParameters.b();
                this.h.a(mQVPrivateParameters);
                return;
            }
            throw new InvalidKeyException(this.e + " key agreement requires " + a(MQVPrivateKey.class) + " for initialisation");
        } else if (key instanceof PrivateKey) {
            eCPrivateKeyParameters = (ECPrivateKeyParameters) ECUtil.a((PrivateKey) key);
            this.g = eCPrivateKeyParameters.b();
            this.h.a(eCPrivateKeyParameters);
        } else {
            throw new InvalidKeyException(this.e + " key agreement requires " + a(ECPrivateKey.class) + " for initialisation");
        }
    }

    private static String a(Class cls) {
        String name = cls.getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }
}
