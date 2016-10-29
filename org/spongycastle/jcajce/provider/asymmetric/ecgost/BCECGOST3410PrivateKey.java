package org.spongycastle.jcajce.provider.asymmetric.ecgost;

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
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.ECGOST3410NamedCurveTable;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.jce.spec.ECPrivateKeySpec;
import org.spongycastle.math.ec.ECCurve;

/* compiled from: Twttr */
public class BCECGOST3410PrivateKey implements ECPrivateKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 7245981689601667138L;
    private transient GOST3410PublicKeyAlgParameters a;
    private String algorithm;
    private transient BigInteger b;
    private transient ECParameterSpec c;
    private transient DERBitString d;
    private transient PKCS12BagAttributeCarrierImpl e;
    private boolean withCompression;

    protected BCECGOST3410PrivateKey() {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
    }

    public BCECGOST3410PrivateKey(ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.b = eCPrivateKeySpec.b();
        if (eCPrivateKeySpec.a() != null) {
            this.c = EC5Util.a(EC5Util.a(eCPrivateKeySpec.a().b(), eCPrivateKeySpec.a().f()), eCPrivateKeySpec.a());
        } else {
            this.c = null;
        }
    }

    public BCECGOST3410PrivateKey(java.security.spec.ECPrivateKeySpec eCPrivateKeySpec) {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.b = eCPrivateKeySpec.getS();
        this.c = eCPrivateKeySpec.getParams();
    }

    public BCECGOST3410PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECGOST3410PublicKey bCECGOST3410PublicKey, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.b = eCPrivateKeyParameters.c();
        if (eCParameterSpec == null) {
            this.c = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.c = eCParameterSpec;
        }
        this.a = bCECGOST3410PublicKey.e();
        this.d = a(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters, BCECGOST3410PublicKey bCECGOST3410PublicKey, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        ECDomainParameters b = eCPrivateKeyParameters.b();
        this.algorithm = str;
        this.b = eCPrivateKeyParameters.c();
        if (eCParameterSpec == null) {
            this.c = new ECParameterSpec(EC5Util.a(b.a(), b.e()), new ECPoint(b.b().g().a(), b.b().h().a()), b.c(), b.d().intValue());
        } else {
            this.c = new ECParameterSpec(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), new ECPoint(eCParameterSpec.c().g().a(), eCParameterSpec.c().h().a()), eCParameterSpec.d(), eCParameterSpec.e().intValue());
        }
        this.a = bCECGOST3410PublicKey.e();
        this.d = a(bCECGOST3410PublicKey);
    }

    public BCECGOST3410PrivateKey(String str, ECPrivateKeyParameters eCPrivateKeyParameters) {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        this.algorithm = str;
        this.b = eCPrivateKeyParameters.c();
        this.c = null;
    }

    BCECGOST3410PrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.algorithm = "ECGOST3410";
        this.e = new PKCS12BagAttributeCarrierImpl();
        a(privateKeyInfo);
    }

    private void a(PrivateKeyInfo privateKeyInfo) throws IOException {
        Object d = privateKeyInfo.a().c().d();
        if ((d instanceof ASN1Sequence) && (ASN1Sequence.a(d).h() == 2 || ASN1Sequence.a(d).h() == 3)) {
            this.a = GOST3410PublicKeyAlgParameters.a(privateKeyInfo.a().c());
            ECNamedCurveParameterSpec a = ECGOST3410NamedCurveTable.a(ECGOST3410NamedCurves.b(this.a.a()));
            this.c = new ECNamedCurveSpec(ECGOST3410NamedCurves.b(this.a.a()), EC5Util.a(a.b(), a.f()), new ECPoint(a.c().g().a(), a.c().h().a()), a.d(), a.e());
            byte[] e = ASN1OctetString.a(privateKeyInfo.c()).e();
            byte[] bArr = new byte[e.length];
            for (int i = 0; i != e.length; i++) {
                bArr[i] = e[(e.length - 1) - i];
            }
            this.b = new BigInteger(1, bArr);
            return;
        }
        X962Parameters a2 = X962Parameters.a(privateKeyInfo.a().c());
        if (a2.a()) {
            ASN1ObjectIdentifier a3 = ASN1ObjectIdentifier.a(a2.c());
            X9ECParameters a4 = ECUtil.a(a3);
            if (a4 == null) {
                ECDomainParameters a5 = ECGOST3410NamedCurves.a(a3);
                this.c = new ECNamedCurveSpec(ECGOST3410NamedCurves.b(a3), EC5Util.a(a5.a(), a5.e()), new ECPoint(a5.b().g().a(), a5.b().h().a()), a5.c(), a5.d());
            } else {
                this.c = new ECNamedCurveSpec(ECUtil.b(a3), EC5Util.a(a4.a(), a4.h()), new ECPoint(a4.b().g().a(), a4.b().h().a()), a4.c(), a4.e());
            }
        } else if (a2.b()) {
            this.c = null;
        } else {
            X9ECParameters a6 = X9ECParameters.a(a2.c());
            this.c = new ECParameterSpec(EC5Util.a(a6.a(), a6.h()), new ECPoint(a6.b().g().a(), a6.b().h().a()), a6.c(), a6.e().intValue());
        }
        d = privateKeyInfo.c();
        if (d instanceof ASN1Integer) {
            this.b = ASN1Integer.a(d).a();
            return;
        }
        org.spongycastle.asn1.sec.ECPrivateKey a7 = org.spongycastle.asn1.sec.ECPrivateKey.a(d);
        this.b = a7.a();
        this.d = a7.b();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        if (this.a != null) {
            byte[] bArr = new byte[32];
            a(bArr, 0, getS());
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.j, this.a), new DEROctetString(bArr)).a("DER");
            } catch (IOException e) {
                return null;
            }
        }
        ASN1Encodable x962Parameters;
        org.spongycastle.asn1.sec.ECPrivateKey eCPrivateKey;
        if (this.c instanceof ECNamedCurveSpec) {
            ASN1ObjectIdentifier a = ECUtil.a(((ECNamedCurveSpec) this.c).a());
            if (a == null) {
                a = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.c).a());
            }
            x962Parameters = new X962Parameters(a);
        } else if (this.c == null) {
            x962Parameters = new X962Parameters(DERNull.a);
        } else {
            ECCurve a2 = EC5Util.a(this.c.getCurve());
            Object x962Parameters2 = new X962Parameters(new X9ECParameters(a2, EC5Util.a(a2, this.c.getGenerator(), this.withCompression), this.c.getOrder(), BigInteger.valueOf((long) this.c.getCofactor()), this.c.getCurve().getSeed()));
        }
        if (this.d != null) {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), this.d, x962Parameters);
        } else {
            eCPrivateKey = new org.spongycastle.asn1.sec.ECPrivateKey(getS(), x962Parameters);
        }
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.j, x962Parameters.d()), eCPrivateKey.d()).a("DER");
        } catch (IOException e2) {
            return null;
        }
    }

    private void a(byte[] bArr, int i, BigInteger bigInteger) {
        Object obj;
        Object toByteArray = bigInteger.toByteArray();
        if (toByteArray.length < 32) {
            obj = new byte[32];
            System.arraycopy(toByteArray, 0, obj, obj.length - toByteArray.length, toByteArray.length);
        } else {
            obj = toByteArray;
        }
        for (int i2 = 0; i2 != 32; i2++) {
            bArr[i + i2] = obj[(obj.length - 1) - i2];
        }
    }

    public ECParameterSpec getParams() {
        return this.c;
    }

    public org.spongycastle.jce.spec.ECParameterSpec b() {
        if (this.c == null) {
            return null;
        }
        return EC5Util.a(this.c, this.withCompression);
    }

    org.spongycastle.jce.spec.ECParameterSpec c() {
        if (this.c != null) {
            return EC5Util.a(this.c, this.withCompression);
        }
        return BouncyCastleProvider.a.a();
    }

    public BigInteger getS() {
        return this.b;
    }

    public BigInteger d() {
        return this.b;
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
        if (!(obj instanceof BCECGOST3410PrivateKey)) {
            return false;
        }
        BCECGOST3410PrivateKey bCECGOST3410PrivateKey = (BCECGOST3410PrivateKey) obj;
        if (d().equals(bCECGOST3410PrivateKey.d()) && c().equals(bCECGOST3410PrivateKey.c())) {
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
        stringBuffer.append("             S: ").append(this.b.toString(16)).append(property);
        return stringBuffer.toString();
    }

    private DERBitString a(BCECGOST3410PublicKey bCECGOST3410PublicKey) {
        try {
            return SubjectPublicKeyInfo.a(ASN1Primitive.b(bCECGOST3410PublicKey.getEncoded())).e();
        } catch (IOException e) {
            return null;
        }
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        a(PrivateKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
        this.e = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
