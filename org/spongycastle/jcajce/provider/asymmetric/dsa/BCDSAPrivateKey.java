package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPrivateKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPrivateKeySpec;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DSAPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* compiled from: Twttr */
public class BCDSAPrivateKey implements DSAPrivateKey, PKCS12BagAttributeCarrier {
    private static final long serialVersionUID = -4677259546958385734L;
    private transient DSAParams a;
    private transient PKCS12BagAttributeCarrierImpl b;
    private BigInteger x;

    protected BCDSAPrivateKey() {
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    BCDSAPrivateKey(DSAPrivateKey dSAPrivateKey) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = dSAPrivateKey.getX();
        this.a = dSAPrivateKey.getParams();
    }

    BCDSAPrivateKey(DSAPrivateKeySpec dSAPrivateKeySpec) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = dSAPrivateKeySpec.getX();
        this.a = new DSAParameterSpec(dSAPrivateKeySpec.getP(), dSAPrivateKeySpec.getQ(), dSAPrivateKeySpec.getG());
    }

    public BCDSAPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.b = new PKCS12BagAttributeCarrierImpl();
        DSAParameter a = DSAParameter.a(privateKeyInfo.a().c());
        this.x = ((ASN1Integer) privateKeyInfo.c()).a();
        this.a = new DSAParameterSpec(a.a(), a.b(), a.c());
    }

    BCDSAPrivateKey(DSAPrivateKeyParameters dSAPrivateKeyParameters) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = dSAPrivateKeyParameters.c();
        this.a = new DSAParameterSpec(dSAPrivateKeyParameters.b().a(), dSAPrivateKeyParameters.b().b(), dSAPrivateKeyParameters.b().c());
    }

    public String getAlgorithm() {
        return "DSA";
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        return KeyUtil.b(new AlgorithmIdentifier(X9ObjectIdentifiers.U, new DSAParameter(this.a.getP(), this.a.getQ(), this.a.getG()).d()), new ASN1Integer(getX()));
    }

    public DSAParams getParams() {
        return this.a;
    }

    public BigInteger getX() {
        return this.x;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPrivateKey)) {
            return false;
        }
        DSAPrivateKey dSAPrivateKey = (DSAPrivateKey) obj;
        if (getX().equals(dSAPrivateKey.getX()) && getParams().getG().equals(dSAPrivateKey.getParams().getG()) && getParams().getP().equals(dSAPrivateKey.getParams().getP()) && getParams().getQ().equals(dSAPrivateKey.getParams().getQ())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.b.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.b.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.b.a();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.a = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.getP());
        objectOutputStream.writeObject(this.a.getQ());
        objectOutputStream.writeObject(this.a.getG());
    }
}
