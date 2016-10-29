package org.spongycastle.jcajce.provider.asymmetric.ec;

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
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECPoint;
import org.spongycastle.asn1.x9.X9IntegerConverter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.crypto.params.ECPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.config.ProviderConfiguration;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.provider.BouncyCastleProvider;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public class BCECPublicKey implements ECPublicKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPublicKey {
    static final long serialVersionUID = 2422789860422731812L;
    private transient ECPoint a;
    private String algorithm;
    private transient ECParameterSpec b;
    private transient ProviderConfiguration c;
    private boolean withCompression;

    public BCECPublicKey(String str, ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.b = eCPublicKeySpec.getParams();
        this.a = EC5Util.a(this.b, eCPublicKeySpec.getW(), false);
        this.c = providerConfiguration;
    }

    public BCECPublicKey(String str, org.spongycastle.jce.spec.ECPublicKeySpec eCPublicKeySpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.a = eCPublicKeySpec.b();
        if (eCPublicKeySpec.a() != null) {
            EllipticCurve a = EC5Util.a(eCPublicKeySpec.a().b(), eCPublicKeySpec.a().f());
            this.a = EC5Util.a(a).b(eCPublicKeySpec.b().g().a(), eCPublicKeySpec.b().h().a());
            this.b = EC5Util.a(a, eCPublicKeySpec.a());
        } else {
            if (this.a.d() == null) {
                this.a = providerConfiguration.a().b().b(this.a.i().a(), this.a.j().a(), false);
            }
            this.b = null;
        }
        this.c = providerConfiguration;
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = eCParameterSpec;
        }
        this.c = providerConfiguration;
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        ECDomainParameters b = eCPublicKeyParameters.b();
        this.algorithm = str;
        if (eCParameterSpec == null) {
            this.b = a(EC5Util.a(b.a(), b.e()), b);
        } else {
            this.b = EC5Util.a(EC5Util.a(eCParameterSpec.b(), eCParameterSpec.f()), eCParameterSpec);
        }
        this.a = EC5Util.a(this.b.getCurve()).b(eCPublicKeyParameters.c().g().a(), eCPublicKeyParameters.c().h().a());
        this.c = providerConfiguration;
    }

    public BCECPublicKey(String str, ECPublicKeyParameters eCPublicKeyParameters, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.a = eCPublicKeyParameters.c();
        this.b = null;
        this.c = providerConfiguration;
    }

    public BCECPublicKey(ECPublicKey eCPublicKey, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = eCPublicKey.getAlgorithm();
        this.b = eCPublicKey.getParams();
        this.a = EC5Util.a(this.b, eCPublicKey.getW(), false);
    }

    BCECPublicKey(String str, SubjectPublicKeyInfo subjectPublicKeyInfo, ProviderConfiguration providerConfiguration) {
        this.algorithm = "EC";
        this.algorithm = str;
        this.c = providerConfiguration;
        a(subjectPublicKeyInfo);
    }

    private ECParameterSpec a(EllipticCurve ellipticCurve, ECDomainParameters eCDomainParameters) {
        return new ECParameterSpec(ellipticCurve, new java.security.spec.ECPoint(eCDomainParameters.b().g().a(), eCDomainParameters.b().h().a()), eCDomainParameters.c(), eCDomainParameters.d().intValue());
    }

    private void a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        ECCurve eCCurve;
        X962Parameters x962Parameters = new X962Parameters((ASN1Primitive) subjectPublicKeyInfo.a().c());
        if (x962Parameters.a()) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) x962Parameters.c();
            X9ECParameters a = ECUtil.a(aSN1ObjectIdentifier);
            ECCurve a2 = a.a();
            this.b = new ECNamedCurveSpec(ECUtil.b(aSN1ObjectIdentifier), EC5Util.a(a2, a.h()), new java.security.spec.ECPoint(a.b().g().a(), a.b().h().a()), a.c(), a.e());
            eCCurve = a2;
        } else if (x962Parameters.b()) {
            this.b = null;
            eCCurve = this.c.a().b();
        } else {
            X9ECParameters a3 = X9ECParameters.a(x962Parameters.c());
            ECCurve a4 = a3.a();
            this.b = new ECParameterSpec(EC5Util.a(a4, a3.h()), new java.security.spec.ECPoint(a3.b().g().a(), a3.b().h().a()), a3.c(), a3.e().intValue());
            eCCurve = a4;
        }
        byte[] e = subjectPublicKeyInfo.e().e();
        ASN1OctetString dEROctetString = new DEROctetString(e);
        if (e[0] == 4 && e[1] == e.length - 2 && ((e[2] == (byte) 2 || e[2] == 3) && new X9IntegerConverter().a(eCCurve) >= e.length - 3)) {
            try {
                dEROctetString = (ASN1OctetString) ASN1Primitive.b(e);
            } catch (IOException e2) {
                throw new IllegalArgumentException("error recovering public key");
            }
        }
        this.a = new X9ECPoint(eCCurve, dEROctetString).a();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        ASN1Encodable x962Parameters;
        ASN1OctetString aSN1OctetString;
        if (this.b instanceof ECNamedCurveSpec) {
            ASN1ObjectIdentifier a = ECUtil.a(((ECNamedCurveSpec) this.b).a());
            if (a == null) {
                a = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.b).a());
            }
            x962Parameters = new X962Parameters(a);
        } else if (this.b == null) {
            Object x962Parameters2 = new X962Parameters(DERNull.a);
        } else {
            ECCurve a2 = EC5Util.a(this.b.getCurve());
            x962Parameters = new X962Parameters(new X9ECParameters(a2, EC5Util.a(a2, this.b.getGenerator(), this.withCompression), this.b.getOrder(), BigInteger.valueOf((long) this.b.getCofactor()), this.b.getCurve().getSeed()));
        }
        ECCurve d = a().d();
        if (this.b == null) {
            aSN1OctetString = (ASN1OctetString) new X9ECPoint(d.b(c().i().a(), c().j().a(), this.withCompression)).d();
        } else {
            aSN1OctetString = (ASN1OctetString) new X9ECPoint(d.b(c().g().a(), c().h().a(), this.withCompression)).d();
        }
        return KeyUtil.a(new SubjectPublicKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.k, x962Parameters), aSN1OctetString.e()));
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
        return this.c.a();
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
        if (!(obj instanceof BCECPublicKey)) {
            return false;
        }
        BCECPublicKey bCECPublicKey = (BCECPublicKey) obj;
        if (a().a(bCECPublicKey.a()) && d().equals(bCECPublicKey.d())) {
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
        this.c = BouncyCastleProvider.a;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }
}
