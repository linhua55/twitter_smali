package org.spongycastle.jcajce.provider.asymmetric.ec;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPrivateKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.jce.spec.ECPrivateKeySpec;
import org.spongycastle.math.ec.ECCurve;

/* compiled from: Twttr */
public class BCECPrivateKey implements ECPrivateKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 994553197664784084L;
    private transient BigInteger a;
    private String algorithm;
    private transient ECParameterSpec b;
    private transient ProviderConfiguration c;
    private transient DERBitString d;
    private transient PKCS12BagAttributeCarrierImpl e;
    private boolean withCompression;

    protected BCECPrivateKey() {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
    }

    public BCECPrivateKey(ECPrivateKey eCPrivateKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.a = eCPrivateKey.getS();
        this.algorithm = eCPrivateKey.getAlgorithm();
        this.b = eCPrivateKey.getParams();
        this.c = providerConfiguration;
    }

    public BCECPrivateKey(String str, ECPrivateKeySpec eCPrivateKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.a = eCPrivateKeySpec.b();
        if (eCPrivateKeySpec.a() != null) {
            this.b = EC5Util.a(EC5Util.a(eCPrivateKeySpec.a().b(), eCPrivateKeySpec.a().f()), eCPrivateKeySpec.a());
        } else {
            this.b = null;
        }
        this.c = providerConfiguration;
    }

    public BCECPrivateKey(String str, java.security.spec.ECPrivateKeySpec eCPrivateKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.a = eCPrivateKeySpec.getS();
        this.b = eCPrivateKeySpec.getParams();
        this.c = providerConfiguration;
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECPublicKey bCECPublicKey, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        this.c = providerConfiguration;
        if (eCParameterSpec == null) {
            this.b = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.b = eCParameterSpec;
        }
        this.d = a(bCECPublicKey);
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECPublicKey bCECPublicKey, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        this.c = providerConfiguration;
        if (eCParameterSpec == null) {
            this.b = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.b = EC5Util.a(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), eCParameterSpec);
        }
        this.d = a(bCECPublicKey);
    }

    public BCECPrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        this.b = null;
        this.c = providerConfiguration;
    }

    BCECPrivateKey(String str, PrivateKeyInfo privateKeyInfo, ProviderConfiguration providerConfiguration) throws IOException {
        this.algorithm = "EC";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.c = providerConfiguration;
        a(privateKeyInfo);
    }

    private void a(PrivateKeyInfo privateKeyInfo) throws IOException {
        X962Parameters a = X962Parameters.a(privateKeyInfo.a().c());
        if (a.a()) {
            ASN1ObjectIdentifier a2 = ASN1ObjectIdentifier.a(a.c());
            X9ECParameters a3 = ECUtil.a(a2);
            this.b = new ECNamedCurveSpec(ECUtil.b(a2), EC5Util.a(a3.a(), a3.h()), new ECPoint(a3.b().g().a(), a3.b().h().a()), a3.c(), a3.e());
        } else if (a.b()) {
            this.b = null;
        } else {
            X9ECParameters a4 = X9ECParameters.a(a.c());
            this.b = new ECParameterSpec(EC5Util.a(a4.a(), a4.h()), new ECPoint(a4.b().g().a(), a4.b().h().a()), a4.c(), a4.e().intValue());
        }
        Object c = privateKeyInfo.c();
        if (c instanceof ASN1Integer) {
            this.a = ASN1Integer.a(c).a();
            return;
        }
        org.spongycastle.asn1.sec.ECPrivateKey a5 = org.spongycastle.asn1.sec.ECPrivateKey.a(c);
        this.a = a5.a();
        this.d = a5.b();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        ASN1Encodable x962Parameters;
        ASN1Encodable eCPrivateKey;
        if (this.b instanceof ECNamedCurveSpec) {
            ASN1ObjectIdentifier a = ECUtil.a(((ECNamedCurveSpec) this.b).a());
            if (a == null) {
                a = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.b).a());
            }
            x962Parameters = new X962Parameters(a);
        } else if (this.b == null) {
            x962Parameters = new X962Parameters(DERNull.a);
        } else {
            ECCurve a2 = EC5Util.a(this.b.getCurve());
            Object x962Parameters2 = new X962Parameters(new X9ECParameters(a2, EC5Util.a(a2, this.b.getGenerator(), this.withCompression), this.b.getOrder(), BigInteger.valueOf((long) this.b.getCofactor()), this.b.getCurve().getSeed()));
        }
        if (this.d != null) {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), this.d, x962Parameters);
        } else {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), x962Parameters);
        }
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.k, x962Parameters), eCPrivateKey).a("DER");
        } catch (IOException e) {
            return null;
        }
    }

    public ECParameterSpec getParams() {
        return this.b;
    }

    public org.spongycastle.jce.spec.ECParameterSpec b() {
        if (this.b == null) {
            return null;
        }
        return EC5Util.a(this.b, this.withCompression);
    }

    org.spongycastle.jce.spec.ECParameterSpec c() {
        if (this.b != null) {
            return EC5Util.a(this.b, this.withCompression);
        }
        return this.c.a();
    }

    public BigInteger getS() {
        return this.a;
    }

    public BigInteger d() {
        return this.a;
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.e.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.e.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.e.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCECPrivateKey)) {
            return false;
        }
        BCECPrivateKey bCECPrivateKey = (BCECPrivateKey) obj;
        if (d().equals(bCECPrivateKey.d()) && c().equals(bCECPrivateKey.c())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return d().hashCode() ^ c().hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("EC Private Key").append(property);
        stringBuffer.append("             S: ").append(this.a.toString(16)).append(property);
        return stringBuffer.toString();
    }

    private DERBitString a(BCECPublicKey bCECPublicKey) {
        try {
            return SubjectPublicKeyInfo.a(ASN1Primitive.b(bCECPublicKey.getEncoded())).e();
        } catch (IOException e) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        a(PrivateKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
        this.c = BouncyCastleProvider.a;
        this.e = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
