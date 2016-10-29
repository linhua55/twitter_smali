package org.spongycastle.jcajce.provider.asymmetric.dstu;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.ua.DSTU4145BinaryField;
import org.spongycastle.asn1.ua.DSTU4145ECBinary;
import org.spongycastle.asn1.ua.DSTU4145NamedCurves;
import org.spongycastle.asn1.ua.DSTU4145Params;
import org.spongycastle.asn1.ua.DSTU4145PointEncoder;
import org.spongycastle.asn1.ua.UAObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class BCDSTU4145PublicKey implements ECPublicKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private transient ECPoint a;
    private String algorithm;
    private transient ECParameterSpec b;
    private transient DSTU4145Params c;
    private boolean withCompression;

    public BCDSTU4145PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        this.b = eCPublicKeySpec.getParams();
        this.a = EC5Util.a(this.b, eCPublicKeySpec.getW(), false);
    }

    public BCDSTU4145PublicKey(org.spongycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "DSTU4145";
        this.a = eCPublicKeySpec.b();
        if (eCPublicKeySpec.a() != null) {
            this.b = EC5Util.a(EC5Util.a(eCPublicKeySpec.a().b(), eCPublicKeySpec.a().f()), eCPublicKeySpec.a());
            return;
        }
        if (this.a.d() == null) {
            this.a = BouncyCastleProvider.a.a().b().b(this.a.g().a(), this.a.h().a());
        }
        this.b = null;
    }

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = eCParameterSpec;
        }
    }

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        this.algorithm = "DSTU4145";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = EC5Util.a(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), eCParameterSpec);
        }
    }

    public BCDSTU4145PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters) {
        this.algorithm = "DSTU4145";
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        this.b = null;
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new java.security.spec.ECPoint(eCDomainParameters.b().g().a(), eCDomainParameters.b().h().a()), eCDomainParameters.c(), eCDomainParameters.d().intValue());
    }

    BCDSTU4145PublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.algorithm = "DSTU4145";
        a(subjectPublicKeyInfo);
    }

    private void a(byte[] bArr) {
        for (int i = 0; i < bArr.length / 2; i++) {
            byte b = bArr[i];
            bArr[i] = bArr[(bArr.length - 1) - i];
            bArr[(bArr.length - 1) - i] = b;
        }
    }

    private void a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        DERBitString e = subjectPublicKeyInfo.e();
        this.algorithm = "DSTU4145";
        try {
            org.spongycastle.jce.spec.ECParameterSpec eCNamedCurveParameterSpec;
            ECCurve f2m;
            byte[] e2 = ((ASN1OctetString) ASN1Primitive.b(e.e())).e();
            if (subjectPublicKeyInfo.a().b().equals(UAObjectIdentifiers.b)) {
                a(e2);
            }
            this.c = DSTU4145Params.a((ASN1Sequence) subjectPublicKeyInfo.a().c());
            if (this.c.a()) {
                ASN1ObjectIdentifier h = this.c.h();
                ECDomainParameters a = DSTU4145NamedCurves.a(h);
                eCNamedCurveParameterSpec = new ECNamedCurveParameterSpec(h.a(), a.a(), a.b(), a.c(), a.d(), a.e());
            } else {
                DSTU4145ECBinary b = this.c.b();
                byte[] c = b.c();
                if (subjectPublicKeyInfo.a().b().equals(UAObjectIdentifiers.b)) {
                    a(c);
                }
                DSTU4145BinaryField a2 = b.a();
                f2m = new F2m(a2.a(), a2.b(), a2.c(), a2.e(), b.b(), new BigInteger(1, c));
                byte[] h2 = b.h();
                if (subjectPublicKeyInfo.a().b().equals(UAObjectIdentifiers.b)) {
                    a(h2);
                }
                eCNamedCurveParameterSpec = new org.spongycastle.jce.spec.ECParameterSpec(f2m, DSTU4145PointEncoder.a(f2m, h2), b.e());
            }
            f2m = eCNamedCurveParameterSpec.b();
            EllipticCurve a3 = EC5Util.a(f2m, eCNamedCurveParameterSpec.f());
            this.a = DSTU4145PointEncoder.a(f2m, e2);
            if (this.c.a()) {
                this.b = new ECNamedCurveSpec(this.c.h().a(), a3, new java.security.spec.ECPoint(eCNamedCurveParameterSpec.c().g().a(), eCNamedCurveParameterSpec.c().h().a()), eCNamedCurveParameterSpec.d(), eCNamedCurveParameterSpec.e());
            } else {
                this.b = new ECParameterSpec(a3, new java.security.spec.ECPoint(eCNamedCurveParameterSpec.c().g().a(), eCNamedCurveParameterSpec.c().h().a()), eCNamedCurveParameterSpec.d(), eCNamedCurveParameterSpec.e().intValue());
            }
        } catch (IOException e3) {
            throw new IllegalArgumentException("error recovering public key");
        }
    }

    public byte[] a() {
        if (this.c != null) {
            return this.c.c();
        }
        return DSTU4145Params.e();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        if (this.c != null) {
            ASN1Encodable aSN1Encodable = this.c;
        } else if (this.b instanceof ECNamedCurveSpec) {
            r0 = new DSTU4145Params(new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.b).a()));
        } else {
            ECCurve a = EC5Util.a(this.b.getCurve());
            r0 = new X962Parameters(new X9ECParameters(a, EC5Util.a(a, this.b.getGenerator(), this.withCompression), this.b.getOrder(), BigInteger.valueOf((long) this.b.getCofactor()), this.b.getCurve().getSeed()));
        }
        try {
            return KeyUtil.a(new SubjectPublicKeyInfo(new AlgorithmIdentifier(UAObjectIdentifiers.c, aSN1Encodable), new DEROctetString(DSTU4145PointEncoder.a(this.a))));
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

    public java.security.spec.ECPoint getW() {
        return new java.security.spec.ECPoint(this.a.g().a(), this.a.h().a());
    }

    public ECPoint c() {
        if (this.b == null) {
            return this.a.c();
        }
        return this.a;
    }

    public ECPoint d() {
        return this.a;
    }

    org.spongycastle.jce.spec.ECParameterSpec e() {
        if (this.b != null) {
            return EC5Util.a(this.b, this.withCompression);
        }
        return BouncyCastleProvider.a.a();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("EC Public Key").append(property);
        stringBuffer.append("            X: ").append(this.a.g().a().toString(16)).append(property);
        stringBuffer.append("            Y: ").append(this.a.h().a().toString(16)).append(property);
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof BCDSTU4145PublicKey)) {
            return false;
        }
        BCDSTU4145PublicKey bCDSTU4145PublicKey = (BCDSTU4145PublicKey) obj;
        if (d().a(bCDSTU4145PublicKey.d()) && e().equals(bCDSTU4145PublicKey.e())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return d().hashCode() ^ e().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        a(SubjectPublicKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
