package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.RSAPrivateKey;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* compiled from: Twttr */
public class JCERSAPrivateKey implements RSAPrivateKey, PKCS12BagAttributeCarrier {
    private static BigInteger a = null;
    static final long serialVersionUID = 5110188922551353628L;
    private PKCS12BagAttributeCarrierImpl attrCarrier;
    protected BigInteger modulus;
    protected BigInteger privateExponent;

    static {
        a = BigInteger.valueOf(0);
    }

    protected JCERSAPrivateKey() {
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
    }

    public BigInteger getModulus() {
        return this.modulus;
    }

    public BigInteger getPrivateExponent() {
        return this.privateExponent;
    }

    public String getAlgorithm() {
        return "RSA";
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        return KeyUtil.b(new AlgorithmIdentifier(PKCSObjectIdentifiers.n_, DERNull.a), new org.spongycastle.asn1.pkcs.RSAPrivateKey(getModulus(), a, getPrivateExponent(), a, a, a, a, a));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof RSAPrivateKey)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        RSAPrivateKey rSAPrivateKey = (RSAPrivateKey) obj;
        if (getModulus().equals(rSAPrivateKey.getModulus()) && getPrivateExponent().equals(rSAPrivateKey.getPrivateExponent())) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPrivateExponent().hashCode();
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

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.modulus = (BigInteger) objectInputStream.readObject();
        this.attrCarrier = new PKCS12BagAttributeCarrierImpl();
        this.attrCarrier.a(objectInputStream);
        this.privateExponent = (BigInteger) objectInputStream.readObject();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(this.modulus);
        this.attrCarrier.a(objectOutputStream);
        objectOutputStream.writeObject(this.privateExponent);
    }
}
