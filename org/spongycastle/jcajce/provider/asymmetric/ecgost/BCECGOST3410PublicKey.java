package org.spongycastle.jcajce.provider.asymmetric.ecgost;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPublicKeySpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.ECGOST3410NamedCurveTable;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class BCECGOST3410PublicKey implements ECPublicKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 7026240464295649314L;
    private transient ECPoint a;
    private String algorithm;
    private transient ECParameterSpec b;
    private transient GOST3410PublicKeyAlgParameters c;
    private boolean withCompression;

    public BCECGOST3410PublicKey(ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410";
        this.b = eCPublicKeySpec.getParams();
        this.a = EC5Util.a(this.b, eCPublicKeySpec.getW(), false);
    }

    public BCECGOST3410PublicKey(org.spongycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec) {
        this.algorithm = "ECGOST3410";
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

    public BCECGOST3410PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = eCParameterSpec;
        }
    }

    public BCECGOST3410PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        this.algorithm = "ECGOST3410";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = EC5Util.a(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), eCParameterSpec);
        }
    }

    public BCECGOST3410PublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters) {
        this.algorithm = "ECGOST3410";
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        this.b = null;
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new java.security.spec.ECPoint(eCDomainParameters.b().g().a(), eCDomainParameters.b().h().a()), eCDomainParameters.c(), eCDomainParameters.d().intValue());
    }

    BCECGOST3410PublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.algorithm = "ECGOST3410";
        a(subjectPublicKeyInfo);
    }

    private void a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        int i = 0;
        DERBitString e = subjectPublicKeyInfo.e();
        this.algorithm = "ECGOST3410";
        try {
            byte[] e2 = ((ASN1OctetString) ASN1Primitive.b(e.e())).e();
            byte[] bArr = new byte[32];
            byte[] bArr2 = new byte[32];
            for (int i2 = 0; i2 != bArr.length; i2++) {
                bArr[i2] = e2[31 - i2];
            }
            while (i != bArr2.length) {
                bArr2[i] = e2[63 - i];
                i++;
            }
            this.c = GOST3410PublicKeyAlgParameters.a(subjectPublicKeyInfo.a().c());
            ECNamedCurveParameterSpec a = ECGOST3410NamedCurveTable.a(ECGOST3410NamedCurves.b(this.c.a()));
            ECCurve b = a.b();
            EllipticCurve a2 = EC5Util.a(b, a.f());
            this.a = b.b(new BigInteger(1, bArr), new BigInteger(1, bArr2));
            this.b = new ECNamedCurveSpec(ECGOST3410NamedCurves.b(this.c.a()), a2, new java.security.spec.ECPoint(a.c().g().a(), a.c().h().a()), a.d(), a.e());
        } catch (IOException e3) {
            throw new IllegalArgumentException("error recovering public key");
        }
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
            r0 = new GOST3410PublicKeyAlgParameters(ECGOST3410NamedCurves.b(((ECNamedCurveSpec) this.b).a()), CryptoProObjectIdentifiers.m);
        } else {
            ECCurve a = EC5Util.a(this.b.getCurve());
            r0 = new X962Parameters(new X9ECParameters(a, EC5Util.a(a, this.b.getGenerator(), this.withCompression), this.b.getOrder(), BigInteger.valueOf((long) this.b.getCofactor()), this.b.getCurve().getSeed()));
        }
        BigInteger a2 = this.a.g().a();
        BigInteger a3 = this.a.h().a();
        byte[] bArr = new byte[64];
        a(bArr, 0, a2);
        a(bArr, 32, a3);
        try {
            return KeyUtil.a(new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.j, aSN1Encodable), new DEROctetString(bArr)));
        } catch (IOException e) {
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

    public ECPoint a() {
        return this.a;
    }

    org.spongycastle.jce.spec.ECParameterSpec d() {
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
        if (!(obj instanceof BCECGOST3410PublicKey)) {
            return false;
        }
        BCECGOST3410PublicKey bCECGOST3410PublicKey = (BCECGOST3410PublicKey) obj;
        if (a().a(bCECGOST3410PublicKey.a()) && d().equals(bCECGOST3410PublicKey.d())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode() ^ d().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        a(SubjectPublicKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public GOST3410PublicKeyAlgParameters e() {
        return this.c;
    }
}
