package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.EllipticCurve;
import org.spongycastle.asn1.ASN1Encodable;
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
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.ECGOST3410NamedCurveTable;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class JCEECPublicKey implements ECPublicKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPublicKey {
    private String algorithm;
    private ECParameterSpec ecSpec;
    private GOST3410PublicKeyAlgParameters gostParams;
    private ECPoint q;
    private boolean withCompression;

    private void a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        if (subjectPublicKeyInfo.b().a().equals(CryptoProObjectIdentifiers.j)) {
            DERBitString e = subjectPublicKeyInfo.e();
            this.algorithm = "ECGOST3410";
            try {
                int i;
                byte[] e2 = ((ASN1OctetString) ASN1Primitive.b(e.e())).e();
                byte[] bArr = new byte[32];
                byte[] bArr2 = new byte[32];
                for (i = 0; i != bArr.length; i++) {
                    bArr[i] = e2[31 - i];
                }
                for (i = 0; i != bArr2.length; i++) {
                    bArr2[i] = e2[63 - i];
                }
                this.gostParams = new GOST3410PublicKeyAlgParameters((ASN1Sequence) subjectPublicKeyInfo.b().c());
                ECNamedCurveParameterSpec a = ECGOST3410NamedCurveTable.a(ECGOST3410NamedCurves.b(this.gostParams.a()));
                ECCurve b = a.b();
                EllipticCurve a2 = EC5Util.a(b, a.f());
                this.q = b.b(new BigInteger(1, bArr), new BigInteger(1, bArr2), false);
                this.ecSpec = new ECNamedCurveSpec(ECGOST3410NamedCurves.b(this.gostParams.a()), a2, new java.security.spec.ECPoint(a.c().g().a(), a.c().h().a()), a.d(), a.e());
                return;
            } catch (IOException e3) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        ECCurve eCCurve;
        X962Parameters x962Parameters = new X962Parameters((ASN1Primitive) subjectPublicKeyInfo.b().c());
        if (x962Parameters.a()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) x962Parameters.c();
            X9ECParameters a3 = ECUtil.a(aSN1ObjectIdentifier);
            ECCurve a4 = a3.a();
            this.ecSpec = new ECNamedCurveSpec(ECUtil.b(aSN1ObjectIdentifier), EC5Util.a(a4, a3.h()), new java.security.spec.ECPoint(a3.b().g().a(), a3.b().h().a()), a3.c(), a3.e());
            eCCurve = a4;
        } else if (x962Parameters.b()) {
            this.ecSpec = null;
            eCCurve = BouncyCastleProvider.a.a().b();
        } else {
            X9ECParameters a5 = X9ECParameters.a(x962Parameters.c());
            b = a5.a();
            this.ecSpec = new ECParameterSpec(EC5Util.a(b, a5.h()), new java.security.spec.ECPoint(a5.b().g().a(), a5.b().h().a()), a5.c(), a5.e().intValue());
            eCCurve = b;
        }
        byte[] e4 = subjectPublicKeyInfo.e().e();
        ASN1OctetString dEROctetString = new DEROctetString(e4);
        if (e4[0] == 4 && e4[1] == e4.length - 2 && ((e4[2] == (byte) 2 || e4[2] == 3) && new X9IntegerConverter().a(eCCurve) >= e4.length - 3)) {
            try {
                dEROctetString = (ASN1OctetString) ASN1Primitive.b(e4);
            } catch (IOException e5) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.q = new X9ECPoint(eCCurve, dEROctetString).a();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        SubjectPublicKeyInfo subjectPublicKeyInfo;
        if (this.algorithm.equals("ECGOST3410")) {
            ASN1Encodable aSN1Encodable;
            if (this.gostParams != null) {
                aSN1Encodable = this.gostParams;
            } else if (this.ecSpec instanceof ECNamedCurveSpec) {
                r0 = new GOST3410PublicKeyAlgParameters(ECGOST3410NamedCurves.b(((ECNamedCurveSpec) this.ecSpec).a()), CryptoProObjectIdentifiers.m);
            } else {
                ECCurve a = EC5Util.a(this.ecSpec.getCurve());
                r0 = new X962Parameters(new X9ECParameters(a, EC5Util.a(a, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf((long) this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
            }
            BigInteger a2 = this.q.g().a();
            BigInteger a3 = this.q.h().a();
            byte[] bArr = new byte[64];
            a(bArr, 0, a2);
            a(bArr, 32, a3);
            try {
                subjectPublicKeyInfo = new SubjectPublicKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.j, aSN1Encodable), new DEROctetString(bArr));
            } catch (IOException e) {
                return null;
            }
        }
        ASN1Encodable x962Parameters;
        if (this.ecSpec instanceof ECNamedCurveSpec) {
            ASN1ObjectIdentifier a4 = ECUtil.a(((ECNamedCurveSpec) this.ecSpec).a());
            if (a4 == null) {
                a4 = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.ecSpec).a());
            }
            x962Parameters = new X962Parameters(a4);
        } else if (this.ecSpec == null) {
            Object x962Parameters2 = new X962Parameters(DERNull.a);
        } else {
            a = EC5Util.a(this.ecSpec.getCurve());
            x962Parameters = new X962Parameters(new X9ECParameters(a, EC5Util.a(a, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf((long) this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        subjectPublicKeyInfo = new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.k, x962Parameters), ((ASN1OctetString) new X9ECPoint(a().d().b(c().g().a(), c().h().a(), this.withCompression)).d()).e());
        return KeyUtil.a(subjectPublicKeyInfo);
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
        return this.ecSpec;
    }

    public org.spongycastle.jce.spec.ECParameterSpec b() {
        if (this.ecSpec == null) {
            return null;
        }
        return EC5Util.a(this.ecSpec, this.withCompression);
    }

    public java.security.spec.ECPoint getW() {
        return new java.security.spec.ECPoint(this.q.g().a(), this.q.h().a());
    }

    public ECPoint c() {
        if (this.ecSpec == null) {
            return this.q.c();
        }
        return this.q;
    }

    public ECPoint a() {
        return this.q;
    }

    org.spongycastle.jce.spec.ECParameterSpec d() {
        if (this.ecSpec != null) {
            return EC5Util.a(this.ecSpec, this.withCompression);
        }
        return BouncyCastleProvider.a.a();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("EC Public Key").append(property);
        stringBuffer.append("            X: ").append(this.q.g().a().toString(16)).append(property);
        stringBuffer.append("            Y: ").append(this.q.h().a().toString(16)).append(property);
        return stringBuffer.toString();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JCEECPublicKey)) {
            return false;
        }
        JCEECPublicKey jCEECPublicKey = (JCEECPublicKey) obj;
        if (a().a(jCEECPublicKey.a()) && d().equals(jCEECPublicKey.d())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return a().hashCode() ^ d().hashCode();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        a(SubjectPublicKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
    }
}
