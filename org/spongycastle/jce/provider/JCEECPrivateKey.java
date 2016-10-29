package org.spongycastle.jce.provider;

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
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.ECGOST3410NamedCurves;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.sec.ECPrivateKeyStructure;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.X962Parameters;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.ECDomainParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.EC5Util;
import org.spongycastle.jcajce.provider.asymmetric.util.ECUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.ECPointEncoder;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECCurve;

/* compiled from: Twttr */
public class JCEECPrivateKey implements ECPrivateKey, ECPointEncoder, org.spongycastle.jce.interfaces.ECPrivateKey, PKCS12BagAttributeCarrier {
    private String algorithm;
    private PKCS12BagAttributeCarrierImpl attrCarrier;
    private BigInteger d;
    private ECParameterSpec ecSpec;
    private DERBitString publicKey;
    private boolean withCompression;

    protected JCEECPrivateKey() {
        this.algorithm = "EC";
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    private void a(PrivateKeyInfo privateKeyInfo) throws IOException {
        X962Parameters x962Parameters = new X962Parameters((ASN1Primitive) privateKeyInfo.a().c());
        if (x962Parameters.a()) {
            ASN1ObjectIdentifier a = ASN1ObjectIdentifier.a(x962Parameters.c());
            X9ECParameters a2 = ECUtil.a(a);
            if (a2 == null) {
                ECDomainParameters a3 = ECGOST3410NamedCurves.a(a);
                this.ecSpec = new ECNamedCurveSpec(ECGOST3410NamedCurves.b(a), EC5Util.a(a3.a(), a3.e()), new ECPoint(a3.b().g().a(), a3.b().h().a()), a3.c(), a3.d());
            } else {
                this.ecSpec = new ECNamedCurveSpec(ECUtil.b(a), EC5Util.a(a2.a(), a2.h()), new ECPoint(a2.b().g().a(), a2.b().h().a()), a2.c(), a2.e());
            }
        } else if (x962Parameters.b()) {
            this.ecSpec = null;
        } else {
            X9ECParameters a4 = X9ECParameters.a(x962Parameters.c());
            this.ecSpec = new ECParameterSpec(EC5Util.a(a4.a(), a4.h()), new ECPoint(a4.b().g().a(), a4.b().h().a()), a4.c(), a4.e().intValue());
        }
        Object c = privateKeyInfo.c();
        if (c instanceof ASN1Integer) {
            this.d = ASN1Integer.a(c).a();
            return;
        }
        ECPrivateKeyStructure eCPrivateKeyStructure = new ECPrivateKeyStructure((ASN1Sequence) c);
        this.d = eCPrivateKeyStructure.a();
        this.publicKey = eCPrivateKeyStructure.b();
    }

    public String getAlgorithm() {
        return this.algorithm;
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        ASN1Encodable x962Parameters;
        ECPrivateKeyStructure eCPrivateKeyStructure;
        if (this.ecSpec instanceof ECNamedCurveSpec) {
            ASN1ObjectIdentifier a = ECUtil.a(((ECNamedCurveSpec) this.ecSpec).a());
            if (a == null) {
                a = new ASN1ObjectIdentifier(((ECNamedCurveSpec) this.ecSpec).a());
            }
            x962Parameters = new X962Parameters(a);
        } else if (this.ecSpec == null) {
            x962Parameters = new X962Parameters(DERNull.a);
        } else {
            ECCurve a2 = EC5Util.a(this.ecSpec.getCurve());
            Object x962Parameters2 = new X962Parameters(new X9ECParameters(a2, EC5Util.a(a2, this.ecSpec.getGenerator(), this.withCompression), this.ecSpec.getOrder(), BigInteger.valueOf((long) this.ecSpec.getCofactor()), this.ecSpec.getCurve().getSeed()));
        }
        if (this.publicKey != null) {
            eCPrivateKeyStructure = new ECPrivateKeyStructure(getS(), this.publicKey, x962Parameters);
        } else {
            eCPrivateKeyStructure = new ECPrivateKeyStructure(getS(), x962Parameters);
        }
        try {
            PrivateKeyInfo privateKeyInfo;
            if (this.algorithm.equals("ECGOST3410")) {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.j, x962Parameters.d()), eCPrivateKeyStructure.d());
            } else {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(X9ObjectIdentifiers.k, x962Parameters.d()), eCPrivateKeyStructure.d());
            }
            return privateKeyInfo.a("DER");
        } catch (IOException e) {
            return null;
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

    org.spongycastle.jce.spec.ECParameterSpec c() {
        if (this.ecSpec != null) {
            return EC5Util.a(this.ecSpec, this.withCompression);
        }
        return BouncyCastleProvider.a.a();
    }

    public BigInteger getS() {
        return this.d;
    }

    public BigInteger d() {
        return this.d;
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.attrCarrier.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.attrCarrier.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.attrCarrier.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof JCEECPrivateKey)) {
            return false;
        }
        JCEECPrivateKey jCEECPrivateKey = (JCEECPrivateKey) obj;
        if (d().equals(jCEECPrivateKey.d()) && c().equals(jCEECPrivateKey.c())) {
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
        stringBuffer.append("             S: ").append(this.d.toString(16)).append(property);
        return stringBuffer.toString();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        a(PrivateKeyInfo.a(ASN1Primitive.b((byte[]) objectInputStream.readObject())));
        this.algorithm = (String) objectInputStream.readObject();
        this.withCompression = objectInputStream.readBoolean();
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.attrCarrier.a(objectInputStream);
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getEncoded());
        objectOutputStream.writeObject(this.algorithm);
        objectOutputStream.writeBoolean(this.withCompression);
        this.attrCarrier.a(objectOutputStream);
    }
}
