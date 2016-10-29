package org.spongycastle.jcajce.provider.keystore.pkcs12;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore.LoadStoreParameter;
import java.security.KeyStore.PasswordProtection;
import java.security.KeyStore.ProtectionParameter;
import java.security.KeyStoreException;
import java.security.KeyStoreSpi;
import java.security.NoSuchAlgorithmException;
import java.security.Principal;
import java.security.PrivateKey;
import java.security.Provider;
import java.security.PublicKey;
import java.security.SecureRandom;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateEncodingException;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.KeySpec;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Map;
import java.util.Vector;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.PBEParameterSpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.BEROctetString;
import org.spongycastle.asn1.BEROutputStream;
import org.spongycastle.asn1.DERBMPString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DEROutputStream;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERSet;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST28147Parameters;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.AuthenticatedSafe;
import org.spongycastle.asn1.pkcs.CertBag;
import org.spongycastle.asn1.pkcs.ContentInfo;
import org.spongycastle.asn1.pkcs.EncryptedData;
import org.spongycastle.asn1.pkcs.EncryptedPrivateKeyInfo;
import org.spongycastle.asn1.pkcs.MacData;
import org.spongycastle.asn1.pkcs.PBES2Parameters;
import org.spongycastle.asn1.pkcs.PBKDF2Params;
import org.spongycastle.asn1.pkcs.PKCS12PBEParams;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.Pfx;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.pkcs.SafeBag;
import org.spongycastle.asn1.util.ASN1Dump;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.AuthorityKeyIdentifier;
import org.spongycastle.asn1.x509.DigestInfo;
import org.spongycastle.asn1.x509.Extension;
import org.spongycastle.asn1.x509.SubjectKeyIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x509.X509ObjectIdentifiers;
import org.spongycastle.crypto.Digest;
import org.spongycastle.crypto.digests.SHA1Digest;
import org.spongycastle.jcajce.provider.config.PKCS12StoreParameter;
import org.spongycastle.jcajce.provider.symmetric.util.BCPBEKey;
import org.spongycastle.jcajce.spec.GOST28147ParameterSpec;
import org.spongycastle.jcajce.spec.PBKDF2KeySpec;
import org.spongycastle.jce.interfaces.BCKeyStore;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.provider.JDKPKCS12StoreParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;

/* compiled from: Twttr */
public class PKCS12KeyStoreSpi extends KeyStoreSpi implements PKCSObjectIdentifiers, X509ObjectIdentifiers, BCKeyStore {
    private static final Provider bE;
    private static final DefaultSecretKeyProvider bF;
    protected SecureRandom bD;
    private IgnoresCaseHashtable bG;
    private Hashtable bH;
    private IgnoresCaseHashtable bI;
    private Hashtable bJ;
    private Hashtable bK;
    private CertificateFactory bL;
    private ASN1ObjectIdentifier bM;
    private ASN1ObjectIdentifier bN;

    /* compiled from: Twttr */
    public class BCPKCS12KeyStore3DES extends PKCS12KeyStoreSpi {
        public BCPKCS12KeyStore3DES() {
            super(PKCS12KeyStoreSpi.bE, bw, bw);
        }
    }

    /* compiled from: Twttr */
    public class BCPKCS12KeyStore extends PKCS12KeyStoreSpi {
        public BCPKCS12KeyStore() {
            super(PKCS12KeyStoreSpi.bE, bw, bz);
        }
    }

    /* compiled from: Twttr */
    class CertId {
        byte[] a;
        final /* synthetic */ PKCS12KeyStoreSpi b;

        CertId(PKCS12KeyStoreSpi pKCS12KeyStoreSpi, PublicKey publicKey) {
            this.b = pKCS12KeyStoreSpi;
            this.a = pKCS12KeyStoreSpi.a(publicKey).a();
        }

        CertId(PKCS12KeyStoreSpi pKCS12KeyStoreSpi, byte[] bArr) {
            this.b = pKCS12KeyStoreSpi;
            this.a = bArr;
        }

        public int hashCode() {
            return Arrays.a(this.a);
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof CertId)) {
                return false;
            }
            return Arrays.a(this.a, ((CertId) obj).a);
        }
    }

    /* compiled from: Twttr */
    public class DefPKCS12KeyStore3DES extends PKCS12KeyStoreSpi {
        public DefPKCS12KeyStore3DES() {
            super(null, bw, bw);
        }
    }

    /* compiled from: Twttr */
    public class DefPKCS12KeyStore extends PKCS12KeyStoreSpi {
        public DefPKCS12KeyStore() {
            super(null, bw, bz);
        }
    }

    /* compiled from: Twttr */
    class DefaultSecretKeyProvider {
        private final Map a;

        DefaultSecretKeyProvider() {
            Map hashMap = new HashMap();
            hashMap.put(new ASN1ObjectIdentifier("1.2.840.113533.7.66.10"), Integers.a(128));
            hashMap.put(PKCSObjectIdentifiers.B.a(), Integers.a(192));
            hashMap.put(NISTObjectIdentifiers.k, Integers.a(128));
            hashMap.put(NISTObjectIdentifiers.r, Integers.a(192));
            hashMap.put(NISTObjectIdentifiers.y, Integers.a(256));
            hashMap.put(NTTObjectIdentifiers.a, Integers.a(128));
            hashMap.put(NTTObjectIdentifiers.b, Integers.a(192));
            hashMap.put(NTTObjectIdentifiers.c, Integers.a(256));
            hashMap.put(CryptoProObjectIdentifiers.d, Integers.a(256));
            this.a = Collections.unmodifiableMap(hashMap);
        }

        public int a(AlgorithmIdentifier algorithmIdentifier) {
            Integer num = (Integer) this.a.get(algorithmIdentifier.b());
            if (num != null) {
                return num.intValue();
            }
            return -1;
        }
    }

    /* compiled from: Twttr */
    class IgnoresCaseHashtable {
        private Hashtable a;
        private Hashtable b;

        private IgnoresCaseHashtable() {
            this.a = new Hashtable();
            this.b = new Hashtable();
        }

        public void a(String str, Object obj) {
            Object obj2;
            if (str == null) {
                obj2 = null;
            } else {
                String c = Strings.c(str);
            }
            String str2 = (String) this.b.get(obj2);
            if (str2 != null) {
                this.a.remove(str2);
            }
            this.b.put(obj2, str);
            this.a.put(str, obj);
        }

        public Enumeration a() {
            return this.a.keys();
        }

        public Object a(String str) {
            String str2 = (String) this.b.remove(str == null ? null : Strings.c(str));
            if (str2 == null) {
                return null;
            }
            return this.a.remove(str2);
        }

        public Object b(String str) {
            String str2 = (String) this.b.get(str == null ? null : Strings.c(str));
            if (str2 == null) {
                return null;
            }
            return this.a.get(str2);
        }

        public Enumeration b() {
            return this.a.elements();
        }
    }

    static {
        bE = new BouncyCastleProvider();
        bF = new DefaultSecretKeyProvider();
    }

    public PKCS12KeyStoreSpi(Provider provider, ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1ObjectIdentifier aSN1ObjectIdentifier2) {
        this.bG = new IgnoresCaseHashtable();
        this.bH = new Hashtable();
        this.bI = new IgnoresCaseHashtable();
        this.bJ = new Hashtable();
        this.bK = new Hashtable();
        this.bD = new SecureRandom();
        this.bM = aSN1ObjectIdentifier;
        this.bN = aSN1ObjectIdentifier2;
        if (provider != null) {
            try {
                this.bL = CertificateFactory.getInstance("X.509", provider);
                return;
            } catch (Exception e) {
                throw new IllegalArgumentException("can't create cert factory - " + e.toString());
            }
        }
        this.bL = CertificateFactory.getInstance("X.509");
    }

    private SubjectKeyIdentifier a(PublicKey publicKey) {
        try {
            return new SubjectKeyIdentifier(a(new SubjectPublicKeyInfo((ASN1Sequence) ASN1Primitive.b(publicKey.getEncoded()))));
        } catch (Exception e) {
            throw new RuntimeException("error creating key");
        }
    }

    private static byte[] a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        Digest sHA1Digest = new SHA1Digest();
        byte[] bArr = new byte[sHA1Digest.b()];
        byte[] e = subjectPublicKeyInfo.e().e();
        sHA1Digest.a(e, 0, e.length);
        sHA1Digest.a(bArr, 0);
        return bArr;
    }

    public Enumeration engineAliases() {
        Hashtable hashtable = new Hashtable();
        Enumeration a = this.bI.a();
        while (a.hasMoreElements()) {
            hashtable.put(a.nextElement(), "cert");
        }
        Enumeration a2 = this.bG.a();
        while (a2.hasMoreElements()) {
            String str = (String) a2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.keys();
    }

    public boolean engineContainsAlias(String str) {
        return (this.bI.b(str) == null && this.bG.b(str) == null) ? false : true;
    }

    public void engineDeleteEntry(String str) throws KeyStoreException {
        Key key = (Key) this.bG.a(str);
        Certificate certificate = (Certificate) this.bI.a(str);
        if (certificate != null) {
            this.bJ.remove(new CertId(this, certificate.getPublicKey()));
        }
        if (key != null) {
            Certificate certificate2;
            String str2 = (String) this.bH.remove(str);
            if (str2 != null) {
                certificate2 = (Certificate) this.bK.remove(str2);
            } else {
                certificate2 = certificate;
            }
            if (certificate2 != null) {
                this.bJ.remove(new CertId(this, certificate2.getPublicKey()));
            }
        }
    }

    public Certificate engineGetCertificate(String str) {
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificate.");
        }
        Certificate certificate = (Certificate) this.bI.b(str);
        if (certificate != null) {
            return certificate;
        }
        String str2 = (String) this.bH.get(str);
        if (str2 != null) {
            return (Certificate) this.bK.get(str2);
        }
        return (Certificate) this.bK.get(str);
    }

    public String engineGetCertificateAlias(Certificate certificate) {
        Enumeration b = this.bI.b();
        Enumeration a = this.bI.a();
        while (b.hasMoreElements()) {
            String str = (String) a.nextElement();
            if (((Certificate) b.nextElement()).equals(certificate)) {
                return str;
            }
        }
        b = this.bK.elements();
        a = this.bK.keys();
        while (b.hasMoreElements()) {
            str = (String) a.nextElement();
            if (((Certificate) b.nextElement()).equals(certificate)) {
                return str;
            }
        }
        return null;
    }

    public Certificate[] engineGetCertificateChain(String str) {
        Certificate[] certificateArr = null;
        if (str == null) {
            throw new IllegalArgumentException("null alias passed to getCertificateChain.");
        }
        if (engineIsKeyEntry(str)) {
            X509Certificate engineGetCertificate = engineGetCertificate(str);
            if (engineGetCertificate != null) {
                Vector vector = new Vector();
                while (engineGetCertificate != null) {
                    Certificate certificate;
                    X509Certificate x509Certificate = engineGetCertificate;
                    byte[] extensionValue = x509Certificate.getExtensionValue(Extension.s.a());
                    if (extensionValue != null) {
                        try {
                            Certificate certificate2;
                            AuthorityKeyIdentifier a = AuthorityKeyIdentifier.a(new ASN1InputStream(((ASN1OctetString) new ASN1InputStream(extensionValue).d()).e()).d());
                            if (a.a() != null) {
                                certificate2 = (Certificate) this.bJ.get(new CertId(this, a.a()));
                            } else {
                                certificate2 = null;
                            }
                            certificate = certificate2;
                        } catch (IOException e) {
                            throw new RuntimeException(e.toString());
                        }
                    }
                    certificate = null;
                    if (certificate == null) {
                        Principal issuerDN = x509Certificate.getIssuerDN();
                        if (!issuerDN.equals(x509Certificate.getSubjectDN())) {
                            Enumeration keys = this.bJ.keys();
                            while (keys.hasMoreElements()) {
                                X509Certificate x509Certificate2 = (X509Certificate) this.bJ.get(keys.nextElement());
                                if (x509Certificate2.getSubjectDN().equals(issuerDN)) {
                                    try {
                                        x509Certificate.verify(x509Certificate2.getPublicKey());
                                        x509Certificate = x509Certificate2;
                                        break;
                                    } catch (Exception e2) {
                                    }
                                }
                            }
                        }
                    }
                    Certificate certificate3 = certificate;
                    vector.addElement(engineGetCertificate);
                    if (x509Certificate == engineGetCertificate) {
                        x509Certificate = null;
                    }
                    engineGetCertificate = x509Certificate;
                }
                certificateArr = new Certificate[vector.size()];
                for (int i = 0; i != certificateArr.length; i++) {
                    certificateArr[i] = (Certificate) vector.elementAt(i);
                }
            }
        }
        return certificateArr;
    }

    public Date engineGetCreationDate(String str) {
        if (str == null) {
            throw new NullPointerException("alias == null");
        } else if (this.bG.b(str) == null && this.bI.b(str) == null) {
            return null;
        } else {
            return new Date();
        }
    }

    public Key engineGetKey(String str, char[] cArr) throws NoSuchAlgorithmException, UnrecoverableKeyException {
        if (str != null) {
            return (Key) this.bG.b(str);
        }
        throw new IllegalArgumentException("null alias passed to getKey.");
    }

    public boolean engineIsCertificateEntry(String str) {
        return this.bI.b(str) != null && this.bG.b(str) == null;
    }

    public boolean engineIsKeyEntry(String str) {
        return this.bG.b(str) != null;
    }

    public void engineSetCertificateEntry(String str, Certificate certificate) throws KeyStoreException {
        if (this.bG.b(str) != null) {
            throw new KeyStoreException("There is a key entry with the name " + str + ".");
        }
        this.bI.a(str, certificate);
        this.bJ.put(new CertId(this, certificate.getPublicKey()), certificate);
    }

    public void engineSetKeyEntry(String str, byte[] bArr, Certificate[] certificateArr) throws KeyStoreException {
        throw new RuntimeException("operation not supported");
    }

    public void engineSetKeyEntry(String str, Key key, char[] cArr, Certificate[] certificateArr) throws KeyStoreException {
        int i = 0;
        if (!(key instanceof PrivateKey)) {
            throw new KeyStoreException("PKCS12 does not support non-PrivateKeys");
        } else if ((key instanceof PrivateKey) && certificateArr == null) {
            throw new KeyStoreException("no certificate chain for private key");
        } else {
            if (this.bG.b(str) != null) {
                engineDeleteEntry(str);
            }
            this.bG.a(str, key);
            if (certificateArr != null) {
                this.bI.a(str, certificateArr[0]);
                while (i != certificateArr.length) {
                    this.bJ.put(new CertId(this, certificateArr[i].getPublicKey()), certificateArr[i]);
                    i++;
                }
            }
        }
    }

    public int engineSize() {
        Hashtable hashtable = new Hashtable();
        Enumeration a = this.bI.a();
        while (a.hasMoreElements()) {
            hashtable.put(a.nextElement(), "cert");
        }
        Enumeration a2 = this.bG.a();
        while (a2.hasMoreElements()) {
            String str = (String) a2.nextElement();
            if (hashtable.get(str) == null) {
                hashtable.put(str, "key");
            }
        }
        return hashtable.size();
    }

    protected PrivateKey a(AlgorithmIdentifier algorithmIdentifier, byte[] bArr, char[] cArr, boolean z) throws IOException {
        ASN1ObjectIdentifier b = algorithmIdentifier.b();
        try {
            if (b.a(PKCSObjectIdentifiers.bt)) {
                PKCS12PBEParams a = PKCS12PBEParams.a(algorithmIdentifier.c());
                KeySpec pBEKeySpec = new PBEKeySpec(cArr);
                SecretKeyFactory instance = SecretKeyFactory.getInstance(b.a(), bE);
                AlgorithmParameterSpec pBEParameterSpec = new PBEParameterSpec(a.b(), a.a().intValue());
                Key generateSecret = instance.generateSecret(pBEKeySpec);
                ((BCPBEKey) generateSecret).a(z);
                Cipher instance2 = Cipher.getInstance(b.a(), bE);
                instance2.init(4, generateSecret, pBEParameterSpec);
                return (PrivateKey) instance2.unwrap(bArr, "", 2);
            } else if (b.equals(PKCSObjectIdentifiers.y)) {
                return (PrivateKey) a(4, cArr, algorithmIdentifier).unwrap(bArr, "", 2);
            } else {
                throw new IOException("exception unwrapping private key - cannot recognise: " + b);
            }
        } catch (Exception e) {
            throw new IOException("exception unwrapping private key - " + e.toString());
        }
    }

    protected byte[] a(String str, Key key, PKCS12PBEParams pKCS12PBEParams, char[] cArr) throws IOException {
        KeySpec pBEKeySpec = new PBEKeySpec(cArr);
        try {
            SecretKeyFactory instance = SecretKeyFactory.getInstance(str, bE);
            AlgorithmParameterSpec pBEParameterSpec = new PBEParameterSpec(pKCS12PBEParams.b(), pKCS12PBEParams.a().intValue());
            Cipher instance2 = Cipher.getInstance(str, bE);
            instance2.init(3, instance.generateSecret(pBEKeySpec), pBEParameterSpec);
            return instance2.wrap(key);
        } catch (Exception e) {
            throw new IOException("exception encrypting data - " + e.toString());
        }
    }

    protected byte[] a(boolean z, AlgorithmIdentifier algorithmIdentifier, char[] cArr, boolean z2, byte[] bArr) throws IOException {
        int i;
        byte[] doFinal;
        ASN1ObjectIdentifier b = algorithmIdentifier.b();
        if (z) {
            i = 1;
        } else {
            i = 2;
        }
        if (b.a(PKCSObjectIdentifiers.bt)) {
            PKCS12PBEParams a = PKCS12PBEParams.a(algorithmIdentifier.c());
            KeySpec pBEKeySpec = new PBEKeySpec(cArr);
            try {
                SecretKeyFactory instance = SecretKeyFactory.getInstance(b.a(), bE);
                AlgorithmParameterSpec pBEParameterSpec = new PBEParameterSpec(a.b(), a.a().intValue());
                BCPBEKey bCPBEKey = (BCPBEKey) instance.generateSecret(pBEKeySpec);
                bCPBEKey.a(z2);
                Cipher instance2 = Cipher.getInstance(b.a(), bE);
                instance2.init(i, bCPBEKey, pBEParameterSpec);
                doFinal = instance2.doFinal(bArr);
            } catch (Exception e) {
                throw new IOException("exception decrypting data - " + e.toString());
            }
        } else if (b.equals(PKCSObjectIdentifiers.y)) {
            try {
                doFinal = a(i, cArr, algorithmIdentifier).doFinal(bArr);
            } catch (Exception e2) {
                throw new IOException("exception decrypting data - " + e2.toString());
            }
        } else {
            throw new IOException("unknown PBE algorithm: " + b);
        }
        return doFinal;
    }

    private Cipher a(int i, char[] cArr, AlgorithmIdentifier algorithmIdentifier) throws NoSuchAlgorithmException, InvalidKeySpecException, NoSuchPaddingException, InvalidKeyException, InvalidAlgorithmParameterException {
        Key generateSecret;
        PBES2Parameters a = PBES2Parameters.a(algorithmIdentifier.c());
        PBKDF2Params a2 = PBKDF2Params.a(a.a().b());
        AlgorithmIdentifier a3 = AlgorithmIdentifier.a(a.b());
        SecretKeyFactory instance = SecretKeyFactory.getInstance(a.a().a().a(), bE);
        if (a2.c()) {
            generateSecret = instance.generateSecret(new PBEKeySpec(cArr, a2.a(), a2.b().intValue(), bF.a(a3)));
        } else {
            generateSecret = instance.generateSecret(new PBKDF2KeySpec(cArr, a2.a(), a2.b().intValue(), bF.a(a3), a2.e()));
        }
        Cipher instance2 = Cipher.getInstance(a.b().a().a());
        AlgorithmIdentifier.a(a.b());
        Object b = a.b().b();
        if (b instanceof ASN1OctetString) {
            instance2.init(i, generateSecret, new IvParameterSpec(ASN1OctetString.a(b).e()));
        } else {
            GOST28147Parameters a4 = GOST28147Parameters.a(b);
            instance2.init(i, generateSecret, new GOST28147ParameterSpec(a4.a(), a4.b()));
        }
        return instance2;
    }

    public void engineLoad(InputStream inputStream, char[] cArr) throws IOException {
        if (inputStream != null) {
            if (cArr == null) {
                throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
            }
            InputStream bufferedInputStream = new BufferedInputStream(inputStream);
            bufferedInputStream.mark(10);
            if (bufferedInputStream.read() != 48) {
                throw new IOException("stream does not represent a PKCS12 key store");
            }
            boolean z;
            ASN1Sequence aSN1Sequence;
            PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier;
            ASN1OctetString aSN1OctetString;
            bufferedInputStream.reset();
            Pfx a = Pfx.a((ASN1Sequence) new ASN1InputStream(bufferedInputStream).d());
            ContentInfo a2 = a.a();
            Vector vector = new Vector();
            Object obj = null;
            if (a.b() != null) {
                MacData b = a.b();
                DigestInfo a3 = b.a();
                AlgorithmIdentifier a4 = a3.a();
                byte[] b2 = b.b();
                int intValue = b.c().intValue();
                byte[] e = ((ASN1OctetString) a2.b()).e();
                try {
                    boolean z2;
                    byte[] a5 = a(a4.b(), b2, intValue, cArr, false, e);
                    byte[] b3 = a3.b();
                    if (Arrays.b(a5, b3)) {
                        z2 = false;
                    } else if (cArr.length > 0) {
                        throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                    } else if (Arrays.b(a(a4.b(), b2, intValue, cArr, true, e), b3)) {
                        z2 = true;
                    } else {
                        throw new IOException("PKCS12 key store mac invalid - wrong password or corrupted file.");
                    }
                    z = z2;
                } catch (IOException e2) {
                    throw e2;
                } catch (Exception e3) {
                    throw new IOException("error constructing MAC: " + e3.toString());
                }
            }
            z = false;
            this.bG = new IgnoresCaseHashtable();
            this.bH = new Hashtable();
            if (a2.a().equals(O)) {
                ContentInfo[] a6 = AuthenticatedSafe.a(new ASN1InputStream(((ASN1OctetString) a2.b()).e()).d()).a();
                int i = 0;
                while (i != a6.length) {
                    Object obj2;
                    SafeBag a7;
                    EncryptedPrivateKeyInfo a8;
                    PrivateKey a9;
                    ASN1OctetString aSN1OctetString2;
                    Enumeration a10;
                    ASN1Sequence aSN1Sequence2;
                    ASN1ObjectIdentifier aSN1ObjectIdentifier;
                    ASN1Set aSN1Set;
                    ASN1Encodable aSN1Encodable;
                    ASN1Encodable a11;
                    String a12;
                    String str;
                    ASN1OctetString aSN1OctetString3;
                    String str2;
                    String str3;
                    if (a6[i].a().equals(O)) {
                        aSN1Sequence = (ASN1Sequence) new ASN1InputStream(((ASN1OctetString) a6[i].b()).e()).d();
                        Object obj3 = obj;
                        int i2 = 0;
                        while (i2 != aSN1Sequence.h()) {
                            Object obj4;
                            a7 = SafeBag.a(aSN1Sequence.a(i2));
                            if (a7.a().equals(bo)) {
                                a8 = EncryptedPrivateKeyInfo.a(a7.b());
                                a9 = a(a8.a(), a8.b(), cArr, z);
                                pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) a9;
                                Object obj5 = null;
                                aSN1OctetString2 = null;
                                if (a7.c() != null) {
                                    a10 = a7.c().a();
                                    while (a10.hasMoreElements()) {
                                        aSN1Sequence2 = (ASN1Sequence) a10.nextElement();
                                        aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence2.a(0);
                                        aSN1Set = (ASN1Set) aSN1Sequence2.a(1);
                                        if (aSN1Set.e() > 0) {
                                            aSN1Encodable = (ASN1Primitive) aSN1Set.a(0);
                                            a11 = pKCS12BagAttributeCarrier.a(aSN1ObjectIdentifier);
                                            if (a11 == null) {
                                                pKCS12BagAttributeCarrier.a(aSN1ObjectIdentifier, aSN1Encodable);
                                            } else if (!a11.d().equals(aSN1Encodable)) {
                                                throw new IOException("attempt to add existing attribute with different value");
                                            }
                                        }
                                        aSN1Encodable = null;
                                        if (aSN1ObjectIdentifier.equals(ai)) {
                                            a12 = ((DERBMPString) aSN1Encodable).a();
                                            this.bG.a(a12, a9);
                                            str = a12;
                                            aSN1OctetString3 = aSN1OctetString2;
                                        } else if (aSN1ObjectIdentifier.equals(aj)) {
                                            aSN1OctetString3 = (ASN1OctetString) aSN1Encodable;
                                            str = str2;
                                        } else {
                                            aSN1OctetString3 = aSN1OctetString2;
                                            str = str2;
                                        }
                                        aSN1OctetString2 = aSN1OctetString3;
                                        str2 = str;
                                    }
                                }
                                if (aSN1OctetString2 != null) {
                                    str3 = new String(Hex.a(aSN1OctetString2.e()));
                                    if (obj5 == null) {
                                        this.bG.a(str3, a9);
                                    } else {
                                        this.bH.put(obj5, str3);
                                    }
                                } else {
                                    obj3 = 1;
                                    this.bG.a("unmarked", a9);
                                }
                                obj4 = obj3;
                            } else if (a7.a().equals(bp)) {
                                vector.addElement(a7);
                                obj4 = obj3;
                            } else {
                                System.out.println("extra in data " + a7.a());
                                System.out.println(ASN1Dump.a(a7));
                                obj4 = obj3;
                            }
                            i2++;
                            obj3 = obj4;
                        }
                        obj2 = obj3;
                    } else if (a6[i].a().equals(T)) {
                        EncryptedData a13 = EncryptedData.a(a6[i].b());
                        aSN1Sequence = (ASN1Sequence) ASN1Primitive.b(a(false, a13.a(), cArr, z, a13.b().e()));
                        for (int i3 = 0; i3 != aSN1Sequence.h(); i3++) {
                            a7 = SafeBag.a(aSN1Sequence.a(i3));
                            if (a7.a().equals(bp)) {
                                vector.addElement(a7);
                            } else if (a7.a().equals(bo)) {
                                a8 = EncryptedPrivateKeyInfo.a(a7.b());
                                a9 = a(a8.a(), a8.b(), cArr, z);
                                pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) a9;
                                str2 = null;
                                aSN1OctetString2 = null;
                                a10 = a7.c().a();
                                while (a10.hasMoreElements()) {
                                    aSN1Sequence2 = (ASN1Sequence) a10.nextElement();
                                    aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1Sequence2.a(0);
                                    aSN1Set = (ASN1Set) aSN1Sequence2.a(1);
                                    if (aSN1Set.e() > 0) {
                                        aSN1Encodable = (ASN1Primitive) aSN1Set.a(0);
                                        a11 = pKCS12BagAttributeCarrier.a(aSN1ObjectIdentifier);
                                        if (a11 == null) {
                                            pKCS12BagAttributeCarrier.a(aSN1ObjectIdentifier, aSN1Encodable);
                                        } else if (!a11.d().equals(aSN1Encodable)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    }
                                    aSN1Encodable = null;
                                    if (aSN1ObjectIdentifier.equals(ai)) {
                                        a12 = ((DERBMPString) aSN1Encodable).a();
                                        this.bG.a(a12, a9);
                                        str = a12;
                                        aSN1OctetString3 = aSN1OctetString2;
                                    } else if (aSN1ObjectIdentifier.equals(aj)) {
                                        aSN1OctetString3 = (ASN1OctetString) aSN1Encodable;
                                        str = str2;
                                    } else {
                                        aSN1OctetString3 = aSN1OctetString2;
                                        str = str2;
                                    }
                                    aSN1OctetString2 = aSN1OctetString3;
                                    str2 = str;
                                }
                                str3 = new String(Hex.a(aSN1OctetString2.e()));
                                if (str2 == null) {
                                    this.bG.a(str3, a9);
                                } else {
                                    this.bH.put(str2, str3);
                                }
                            } else if (a7.a().equals(bn)) {
                                a9 = BouncyCastleProvider.a(PrivateKeyInfo.a(a7.b()));
                                pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) a9;
                                String str4 = null;
                                aSN1OctetString = null;
                                Enumeration a14 = a7.c().a();
                                while (a14.hasMoreElements()) {
                                    aSN1Sequence2 = ASN1Sequence.a(a14.nextElement());
                                    ASN1ObjectIdentifier a15 = ASN1ObjectIdentifier.a(aSN1Sequence2.a(0));
                                    aSN1Set = ASN1Set.a(aSN1Sequence2.a(1));
                                    if (aSN1Set.e() > 0) {
                                        ASN1Primitive aSN1Primitive = (ASN1Primitive) aSN1Set.a(0);
                                        ASN1Encodable a16 = pKCS12BagAttributeCarrier.a(a15);
                                        if (a16 != null) {
                                            if (!a16.d().equals(aSN1Primitive)) {
                                                throw new IOException("attempt to add existing attribute with different value");
                                            }
                                        }
                                        pKCS12BagAttributeCarrier.a(a15, aSN1Primitive);
                                        if (a15.equals(ai)) {
                                            a12 = ((DERBMPString) aSN1Primitive).a();
                                            this.bG.a(a12, a9);
                                            ASN1OctetString aSN1OctetString4 = aSN1OctetString;
                                            str = a12;
                                            aSN1OctetString3 = aSN1OctetString4;
                                        } else {
                                            if (a15.equals(aj)) {
                                                aSN1OctetString3 = (ASN1OctetString) aSN1Primitive;
                                                str = str4;
                                            }
                                        }
                                        str4 = str;
                                        aSN1OctetString = aSN1OctetString3;
                                    }
                                    aSN1OctetString3 = aSN1OctetString;
                                    str = str4;
                                    str4 = str;
                                    aSN1OctetString = aSN1OctetString3;
                                }
                                str3 = new String(Hex.a(aSN1OctetString.e()));
                                if (str4 == null) {
                                    this.bG.a(str3, a9);
                                } else {
                                    this.bH.put(str4, str3);
                                }
                            } else {
                                System.out.println("extra in encryptedData " + a7.a());
                                System.out.println(ASN1Dump.a(a7));
                            }
                        }
                        obj2 = obj;
                    } else {
                        System.out.println("extra " + a6[i].a().a());
                        System.out.println("extra " + ASN1Dump.a(a6[i].b()));
                        obj2 = obj;
                    }
                    i++;
                    obj = obj2;
                }
            }
            this.bI = new IgnoresCaseHashtable();
            this.bJ = new Hashtable();
            this.bK = new Hashtable();
            int i4 = 0;
            while (i4 != vector.size()) {
                SafeBag safeBag = (SafeBag) vector.elementAt(i4);
                CertBag a17 = CertBag.a(safeBag.b());
                if (a17.a().equals(am)) {
                    try {
                        String a18;
                        Certificate generateCertificate = this.bL.generateCertificate(new ByteArrayInputStream(((ASN1OctetString) a17.b()).e()));
                        aSN1OctetString = null;
                        String str5 = null;
                        if (safeBag.c() != null) {
                            Enumeration a19 = safeBag.c().a();
                            while (a19.hasMoreElements()) {
                                ASN1OctetString aSN1OctetString5;
                                aSN1Sequence = ASN1Sequence.a(a19.nextElement());
                                ASN1ObjectIdentifier a20 = ASN1ObjectIdentifier.a(aSN1Sequence.a(0));
                                ASN1Set a21 = ASN1Set.a(aSN1Sequence.a(1));
                                if (a21.e() > 0) {
                                    ASN1Primitive aSN1Primitive2 = (ASN1Primitive) a21.a(0);
                                    if (generateCertificate instanceof PKCS12BagAttributeCarrier) {
                                        pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) generateCertificate;
                                        ASN1Encodable a22 = pKCS12BagAttributeCarrier.a(a20);
                                        if (a22 == null) {
                                            pKCS12BagAttributeCarrier.a(a20, aSN1Primitive2);
                                        } else if (!a22.d().equals(aSN1Primitive2)) {
                                            throw new IOException("attempt to add existing attribute with different value");
                                        }
                                    }
                                    if (a20.equals(ai)) {
                                        a18 = ((DERBMPString) aSN1Primitive2).a();
                                        aSN1OctetString5 = aSN1OctetString;
                                    } else if (a20.equals(aj)) {
                                        aSN1OctetString5 = (ASN1OctetString) aSN1Primitive2;
                                        a18 = str5;
                                    }
                                    str5 = a18;
                                    aSN1OctetString = aSN1OctetString5;
                                }
                                a18 = str5;
                                aSN1OctetString5 = aSN1OctetString;
                                str5 = a18;
                                aSN1OctetString = aSN1OctetString5;
                            }
                        }
                        this.bJ.put(new CertId(this, generateCertificate.getPublicKey()), generateCertificate);
                        if (obj == null) {
                            if (aSN1OctetString != null) {
                                this.bK.put(new String(Hex.a(aSN1OctetString.e())), generateCertificate);
                            }
                            if (str5 != null) {
                                this.bI.a(str5, generateCertificate);
                            }
                        } else if (this.bK.isEmpty()) {
                            a18 = new String(Hex.a(a(generateCertificate.getPublicKey()).a()));
                            this.bK.put(a18, generateCertificate);
                            this.bG.a(a18, this.bG.a("unmarked"));
                        }
                        i4++;
                    } catch (Exception e32) {
                        throw new RuntimeException(e32.toString());
                    }
                }
                throw new RuntimeException("Unsupported certificate type: " + a17.a());
            }
        }
    }

    public void engineStore(LoadStoreParameter loadStoreParameter) throws IOException, NoSuchAlgorithmException, CertificateException {
        if (loadStoreParameter == null) {
            throw new IllegalArgumentException("'param' arg cannot be null");
        } else if ((loadStoreParameter instanceof PKCS12StoreParameter) || (loadStoreParameter instanceof JDKPKCS12StoreParameter)) {
            PKCS12StoreParameter pKCS12StoreParameter;
            char[] cArr;
            if (loadStoreParameter instanceof PKCS12StoreParameter) {
                pKCS12StoreParameter = (PKCS12StoreParameter) loadStoreParameter;
            } else {
                pKCS12StoreParameter = new PKCS12StoreParameter(((JDKPKCS12StoreParameter) loadStoreParameter).a(), loadStoreParameter.getProtectionParameter(), ((JDKPKCS12StoreParameter) loadStoreParameter).b());
            }
            ProtectionParameter protectionParameter = loadStoreParameter.getProtectionParameter();
            if (protectionParameter == null) {
                cArr = null;
            } else if (protectionParameter instanceof PasswordProtection) {
                cArr = ((PasswordProtection) protectionParameter).getPassword();
            } else {
                throw new IllegalArgumentException("No support for protection parameter of type " + protectionParameter.getClass().getName());
            }
            a(pKCS12StoreParameter.a(), cArr, pKCS12StoreParameter.b());
        } else {
            throw new IllegalArgumentException("No support for 'param' of type " + loadStoreParameter.getClass().getName());
        }
    }

    public void engineStore(OutputStream outputStream, char[] cArr) throws IOException {
        a(outputStream, cArr, false);
    }

    private void a(OutputStream outputStream, char[] cArr, boolean z) throws IOException {
        if (cArr == null) {
            throw new NullPointerException("No password supplied for PKCS#12 KeyStore.");
        }
        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier;
        ASN1EncodableVector aSN1EncodableVector;
        Enumeration a;
        ASN1Encodable aSN1Encodable;
        DEROutputStream dEROutputStream;
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        Enumeration a2 = this.bG.a();
        while (a2.hasMoreElements()) {
            Object obj;
            byte[] bArr = new byte[20];
            this.bD.nextBytes(bArr);
            String str = (String) a2.nextElement();
            Key key = (PrivateKey) this.bG.b(str);
            PKCS12PBEParams pKCS12PBEParams = new PKCS12PBEParams(bArr, 1024);
            EncryptedPrivateKeyInfo encryptedPrivateKeyInfo = new EncryptedPrivateKeyInfo(new AlgorithmIdentifier(this.bM, pKCS12PBEParams.d()), a(this.bM.a(), key, pKCS12PBEParams, cArr));
            ASN1EncodableVector aSN1EncodableVector3 = new ASN1EncodableVector();
            if (key instanceof PKCS12BagAttributeCarrier) {
                pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) key;
                DERBMPString dERBMPString = (DERBMPString) pKCS12BagAttributeCarrier.a(ai);
                if (dERBMPString == null || !dERBMPString.a().equals(str)) {
                    pKCS12BagAttributeCarrier.a(ai, new DERBMPString(str));
                }
                if (pKCS12BagAttributeCarrier.a(aj) == null) {
                    pKCS12BagAttributeCarrier.a(aj, a(engineGetCertificate(str).getPublicKey()));
                }
                Enumeration a3 = pKCS12BagAttributeCarrier.a();
                obj = null;
                while (a3.hasMoreElements()) {
                    ASN1Encodable aSN1Encodable2 = (ASN1ObjectIdentifier) a3.nextElement();
                    ASN1EncodableVector aSN1EncodableVector4 = new ASN1EncodableVector();
                    aSN1EncodableVector4.a(aSN1Encodable2);
                    aSN1EncodableVector4.a(new DERSet(pKCS12BagAttributeCarrier.a(aSN1Encodable2)));
                    obj = 1;
                    aSN1EncodableVector3.a(new DERSequence(aSN1EncodableVector4));
                }
            } else {
                obj = null;
            }
            if (obj == null) {
                ASN1EncodableVector aSN1EncodableVector5 = new ASN1EncodableVector();
                Certificate engineGetCertificate = engineGetCertificate(str);
                aSN1EncodableVector5.a(aj);
                aSN1EncodableVector5.a(new DERSet(a(engineGetCertificate.getPublicKey())));
                aSN1EncodableVector3.a(new DERSequence(aSN1EncodableVector5));
                aSN1EncodableVector5 = new ASN1EncodableVector();
                aSN1EncodableVector5.a(ai);
                aSN1EncodableVector5.a(new DERSet(new DERBMPString(str)));
                aSN1EncodableVector3.a(new DERSequence(aSN1EncodableVector5));
            }
            aSN1EncodableVector2.a(new SafeBag(bo, encryptedPrivateKeyInfo.d(), new DERSet(aSN1EncodableVector3)));
        }
        ASN1Encodable bEROctetString = new BEROctetString(new DERSequence(aSN1EncodableVector2).a("DER"));
        byte[] bArr2 = new byte[20];
        this.bD.nextBytes(bArr2);
        ASN1EncodableVector aSN1EncodableVector6 = new ASN1EncodableVector();
        AlgorithmIdentifier algorithmIdentifier = new AlgorithmIdentifier(this.bN, new PKCS12PBEParams(bArr2, 1024).d());
        Hashtable hashtable = new Hashtable();
        Enumeration a4 = this.bG.a();
        while (a4.hasMoreElements()) {
            DERBMPString dERBMPString2;
            try {
                Object obj2;
                str = (String) a4.nextElement();
                Certificate engineGetCertificate2 = engineGetCertificate(str);
                CertBag certBag = new CertBag(am, new DEROctetString(engineGetCertificate2.getEncoded()));
                aSN1EncodableVector = new ASN1EncodableVector();
                if (engineGetCertificate2 instanceof PKCS12BagAttributeCarrier) {
                    pKCS12BagAttributeCarrier = (PKCS12BagAttributeCarrier) engineGetCertificate2;
                    dERBMPString2 = (DERBMPString) pKCS12BagAttributeCarrier.a(ai);
                    if (dERBMPString2 == null || !dERBMPString2.a().equals(str)) {
                        pKCS12BagAttributeCarrier.a(ai, new DERBMPString(str));
                    }
                    if (pKCS12BagAttributeCarrier.a(aj) == null) {
                        pKCS12BagAttributeCarrier.a(aj, a(engineGetCertificate2.getPublicKey()));
                    }
                    a = pKCS12BagAttributeCarrier.a();
                    Object obj3 = null;
                    while (a.hasMoreElements()) {
                        ASN1Encodable aSN1Encodable3 = (ASN1ObjectIdentifier) a.nextElement();
                        ASN1EncodableVector aSN1EncodableVector7 = new ASN1EncodableVector();
                        aSN1EncodableVector7.a(aSN1Encodable3);
                        aSN1EncodableVector7.a(new DERSet(pKCS12BagAttributeCarrier.a(aSN1Encodable3)));
                        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector7));
                        obj3 = 1;
                    }
                    obj2 = obj3;
                } else {
                    obj2 = null;
                }
                if (obj2 == null) {
                    aSN1EncodableVector5 = new ASN1EncodableVector();
                    aSN1EncodableVector5.a(aj);
                    aSN1EncodableVector5.a(new DERSet(a(engineGetCertificate2.getPublicKey())));
                    aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector5));
                    aSN1EncodableVector5 = new ASN1EncodableVector();
                    aSN1EncodableVector5.a(ai);
                    aSN1EncodableVector5.a(new DERSet(new DERBMPString(str)));
                    aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector5));
                }
                aSN1EncodableVector6.a(new SafeBag(bp, certBag.d(), new DERSet(aSN1EncodableVector)));
                hashtable.put(engineGetCertificate2, engineGetCertificate2);
            } catch (CertificateEncodingException e) {
                throw new IOException("Error encoding certificate: " + e.toString());
            }
        }
        a4 = this.bI.a();
        while (a4.hasMoreElements()) {
            try {
                str = (String) a4.nextElement();
                Certificate certificate = (Certificate) this.bI.b(str);
                Object obj4 = null;
                if (this.bG.b(str) == null) {
                    certBag = new CertBag(am, new DEROctetString(certificate.getEncoded()));
                    aSN1EncodableVector = new ASN1EncodableVector();
                    if (certificate instanceof PKCS12BagAttributeCarrier) {
                        PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier2 = (PKCS12BagAttributeCarrier) certificate;
                        dERBMPString2 = (DERBMPString) pKCS12BagAttributeCarrier2.a(ai);
                        if (dERBMPString2 == null || !dERBMPString2.a().equals(str)) {
                            pKCS12BagAttributeCarrier2.a(ai, new DERBMPString(str));
                        }
                        a = pKCS12BagAttributeCarrier2.a();
                        while (a.hasMoreElements()) {
                            aSN1Encodable3 = (ASN1ObjectIdentifier) a.nextElement();
                            if (!aSN1Encodable3.equals(PKCSObjectIdentifiers.aj)) {
                                aSN1EncodableVector7 = new ASN1EncodableVector();
                                aSN1EncodableVector7.a(aSN1Encodable3);
                                aSN1EncodableVector7.a(new DERSet(pKCS12BagAttributeCarrier2.a(aSN1Encodable3)));
                                aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector7));
                                obj4 = 1;
                            }
                        }
                    }
                    if (obj4 == null) {
                        aSN1EncodableVector4 = new ASN1EncodableVector();
                        aSN1EncodableVector4.a(ai);
                        aSN1EncodableVector4.a(new DERSet(new DERBMPString(str)));
                        aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector4));
                    }
                    aSN1EncodableVector6.a(new SafeBag(bp, certBag.d(), new DERSet(aSN1EncodableVector)));
                    hashtable.put(certificate, certificate);
                }
            } catch (CertificateEncodingException e2) {
                throw new IOException("Error encoding certificate: " + e2.toString());
            }
        }
        Enumeration keys = this.bJ.keys();
        while (keys.hasMoreElements()) {
            Certificate certificate2 = (Certificate) this.bJ.get((CertId) keys.nextElement());
            if (hashtable.get(certificate2) == null) {
                CertBag certBag2 = new CertBag(am, new DEROctetString(certificate2.getEncoded()));
                aSN1EncodableVector7 = new ASN1EncodableVector();
                if (certificate2 instanceof PKCS12BagAttributeCarrier) {
                    PKCS12BagAttributeCarrier pKCS12BagAttributeCarrier3 = (PKCS12BagAttributeCarrier) certificate2;
                    a4 = pKCS12BagAttributeCarrier3.a();
                    while (a4.hasMoreElements()) {
                        aSN1Encodable = (ASN1ObjectIdentifier) a4.nextElement();
                        if (!aSN1Encodable.equals(PKCSObjectIdentifiers.aj)) {
                            ASN1EncodableVector aSN1EncodableVector8 = new ASN1EncodableVector();
                            aSN1EncodableVector8.a(aSN1Encodable);
                            aSN1EncodableVector8.a(new DERSet(pKCS12BagAttributeCarrier3.a(aSN1Encodable)));
                            aSN1EncodableVector7.a(new DERSequence(aSN1EncodableVector8));
                        }
                    }
                }
                try {
                    aSN1EncodableVector6.a(new SafeBag(bp, certBag2.d(), new DERSet(aSN1EncodableVector7)));
                } catch (CertificateEncodingException e22) {
                    throw new IOException("Error encoding certificate: " + e22.toString());
                }
            }
        }
        EncryptedData encryptedData = new EncryptedData(O, algorithmIdentifier, new BEROctetString(a(true, algorithmIdentifier, cArr, false, new DERSequence(aSN1EncodableVector6).a("DER"))));
        aSN1Encodable = new AuthenticatedSafe(new ContentInfo[]{new ContentInfo(O, bEROctetString), new ContentInfo(T, encryptedData.d())});
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        if (z) {
            dEROutputStream = new DEROutputStream(byteArrayOutputStream);
        } else {
            dEROutputStream = new BEROutputStream(byteArrayOutputStream);
        }
        dEROutputStream.a(aSN1Encodable);
        ContentInfo contentInfo = new ContentInfo(O, new BEROctetString(byteArrayOutputStream.toByteArray()));
        byte[] bArr3 = new byte[20];
        this.bD.nextBytes(bArr3);
        try {
            aSN1Encodable = new Pfx(contentInfo, new MacData(new DigestInfo(new AlgorithmIdentifier(i, DERNull.a), a(i, bArr3, 1024, cArr, false, ((ASN1OctetString) contentInfo.b()).e())), bArr3, 1024));
            if (z) {
                dEROutputStream = new DEROutputStream(outputStream);
            } else {
                dEROutputStream = new BEROutputStream(outputStream);
            }
            dEROutputStream.a(aSN1Encodable);
        } catch (Exception e3) {
            throw new IOException("error constructing MAC: " + e3.toString());
        }
    }

    private static byte[] a(ASN1ObjectIdentifier aSN1ObjectIdentifier, byte[] bArr, int i, char[] cArr, boolean z, byte[] bArr2) throws Exception {
        SecretKeyFactory instance = SecretKeyFactory.getInstance(aSN1ObjectIdentifier.a(), bE);
        AlgorithmParameterSpec pBEParameterSpec = new PBEParameterSpec(bArr, i);
        BCPBEKey bCPBEKey = (BCPBEKey) instance.generateSecret(new PBEKeySpec(cArr));
        bCPBEKey.a(z);
        Mac instance2 = Mac.getInstance(aSN1ObjectIdentifier.a(), bE);
        instance2.init(bCPBEKey, pBEParameterSpec);
        instance2.update(bArr2);
        return instance2.doFinal();
    }
}
