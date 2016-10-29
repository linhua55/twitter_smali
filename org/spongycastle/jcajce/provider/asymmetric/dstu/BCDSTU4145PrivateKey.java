package org.spongycastle.jcajce.provider.asymmetric.dstu;

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
import org.spongycastle.asn1.ua.DSTU4145NamedCurves;
import org.spongycastle.asn1.ua.UAObjectIdentifiers;
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
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.jce.spec.ECPrivateKeySpec;
import org.spongycastle.math.ec.ECCurve;

/* compiled from: Twttr */
public class BCDSTU4145PrivateKey implements ECPrivateKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 7245981689601667138L;
    private transient BigInteger a;
    private String algorithm;
    private transient ECParameterSpec b;
    private transient DERBitString c;
    private transient PKCS12BagAttributeCarrierImpl d;
    private boolean withCompression;

    protected BCDSTU4145PrivateKey() {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
    }

    public BCDSTU4145PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        this.a = eCPrivateKeySpec.b();
        if (eCPrivateKeySpec.a() != null) {
            this.b = EC5Util.a(EC5Util.a(eCPrivateKeySpec.a().b(), eCPrivateKeySpec.a().f()), eCPrivateKeySpec.a());
        } else {
            this.b = null;
        }
    }

    public BCDSTU4145PrivateKey(java.security.spec.ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        this.a = eCPrivateKeySpec.getS();
        this.b = eCPrivateKeySpec.getParams();
    }

    public BCDSTU4145PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCDSTU4145PublicKey bCDSTU4145PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.b = eCParameterSpec;
        }
        this.c = a(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCDSTU4145PublicKey bCDSTU4145PublicKey, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.b = new ECParameterSpec(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), new ECPoint(eCParameterSpec.c().g().a(), eCParameterSpec.c().h().a()), eCParameterSpec.d(), eCParameterSpec.e().intValue());
        }
        this.c = a(bCDSTU4145PublicKey);
    }

    public BCDSTU4145PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters) {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.a = eCPrivateKeyParameters.c();
        this.b = null;
    }

    BCDSTU4145PrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.algorithm = "DSTU4145";
        this.d = new PKCS12BagAttributeCarrierImpl();
        a(privateKeyInfo);
    }

    private void a(PrivateKeyInfo privateKeyInfo) throws IOException {
        X962Parameters x962Parameters = new X962Parameters((ASN1Primitive) privateKeyInfo.a().c());
        if (x962Parameters.a()) {
            ASN1ObjectIdentifier a = ASN1ObjectIdentifier.a(x962Parameters.c());
            X9ECParameters a2 = ECUtil.a(a);
            if (a2 == null) {
                ECDomainParameters a3 = DSTU4145NamedCurves.a(a);
                this.b = new ECNamedCurveSpec(a.a(), EC5Util.a(a3.a(), a3.e()), new ECPoint(a3.b().g().a(), a3.b().h().a()), a3.c(), a3.d());
            } else {
                this.b = new ECNamedCurveSpec(ECUtil.b(a), EC5Util.a(a2.a(), a2.h()), new ECPoint(a2.b().g().a(), a2.b().h().a()), a2.c(), a2.e());
            }
        } else if (x962Parameters.b()) {
            this.b = null;
        } else {
            X9ECParameters a4 = X9ECParameters.a(x962Parameters.c());
            this.b = new ECParameterSpec(EC5Util.a(a4.a(), a4.h()), new ECPoint(a4.b().g().a(), a4.b().h().a()), a4.c(), a4.e().intValue());
        }
        Object c = privateKeyInfo.c();
        if (c instanceof ASN1Integer) {
            this.a = ASN1Integer.a(c).a();
            return;
        }
        org.spongycastle.asn1.sec.ECPrivateKey a5 = org.spongycastle.asn1.sec.ECPrivateKey.a(c);
        this.a = a5.a();
        this.c = a5.b();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        ASN1Encodable x962Parameters;
        org.spongycastle.asn1.sec.ECPrivateKey eCPrivateKey;
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
        if (this.c != null) {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), this.c, x962Parameters);
        } else {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), x962Parameters);
        }
        try {
            PrivateKeyInfo privateKeyInfo;
            if (this.algorithm.equals("DSTU4145")) {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(UAObjectIdentifiers.c, x962Parameters.d()), eCPrivateKey.d());
            } else {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.k, x962Parameters.d()), eCPrivateKey.d());
            }
            return privateKeyInfo.a("DER");
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
        return BouncyCastleProvider.a.a();
    }

    public BigInteger getS() {
        return this.a;
    }

    public BigInteger d() {
        return this.a;
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.d.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.d.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.d.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCDSTU4145PrivateKey)) {
            return false;
        }
        BCDSTU4145PrivateKey bCDSTU4145PrivateKey = (BCDSTU4145PrivateKey) obj;
        if (d().equals(bCDSTU4145PrivateKey.d()) && c().equals(bCDSTU4145PrivateKey.c())) {
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

    private DERBitString a(BCDSTU4145PublicKey bCDSTU4145PublicKey) {
        try {
            return SubjectPublicKeyInfo.a(ASN1Primitive.b(bCDSTU4145PublicKey.getEncoded())).e();
        } catch (IOException e) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        a(PrivateKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
        this.d = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
