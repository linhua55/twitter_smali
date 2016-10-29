package org.spongycastle.jcajce.provider.asymmetric.rsa;

import java.io.EOFException;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OptionalDataException;
import java.math.BigInteger;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.RSAKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

/* compiled from: Twttr */
public class BCRSAPublicKey implements RSAPublicKey {
    private static final AlgorithmIdentifier a;
    static final long serialVersionUID = 2675817738516720772L;
    private transient AlgorithmIdentifier b;
    private BigInteger modulus;
    private BigInteger publicExponent;

    static {
        a = new AlgorithmIdentifier(PKCSObjectIdentifiers.n_, DERNull.a);
    }

    BCRSAPublicKey(RSAKeyParameters rSAKeyParameters) {
        this.b = a;
        this.modulus = rSAKeyParameters.b();
        this.publicExponent = rSAKeyParameters.c();
    }

    BCRSAPublicKey(RSAPublicKeySpec rSAPublicKeySpec) {
        this.b = a;
        this.modulus = rSAPublicKeySpec.getModulus();
        this.publicExponent = rSAPublicKeySpec.getPublicExponent();
    }

    BCRSAPublicKey(RSAPublicKey rSAPublicKey) {
        this.b = a;
        this.modulus = rSAPublicKey.getModulus();
        this.publicExponent = rSAPublicKey.getPublicExponent();
    }

    BCRSAPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        a(subjectPublicKeyInfo);
    }

    private void a(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        try {
            org.spongycastle.asn1.pkcs.RSAPublicKey a = org.spongycastle.asn1.pkcs.RSAPublicKey.a(subjectPublicKeyInfo.c());
            this.b = subjectPublicKeyInfo.a();
            this.modulus = a.a();
            this.publicExponent = a.b();
        } catch (IOException e) {
            throw new IllegalArgumentException("invalid info structure in RSA public key");
        }
    }

    public BigInteger getModulus() {
        return this.modulus;
    }

    public BigInteger getPublicExponent() {
        return this.publicExponent;
    }

    public String getAlgorithm() {
        return "RSA";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        return KeyUtil.a(this.b, new org.spongycastle.asn1.pkcs.RSAPublicKey(getModulus(), getPublicExponent()));
    }

    public int hashCode() {
        return getModulus().hashCode() ^ getPublicExponent().hashCode();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof RSAPublicKey)) {
            return false;
        }
        RSAPublicKey rSAPublicKey = (RSAPublicKey) obj;
        if (getModulus().equals(rSAPublicKey.getModulus()) && getPublicExponent().equals(rSAPublicKey.getPublicExponent())) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("RSA Public Key").append(property);
        stringBuffer.append("            modulus: ").append(getModulus().toString(16)).append(property);
        stringBuffer.append("    public exponent: ").append(getPublicExponent().toString(16)).append(property);
        return stringBuffer.toString();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        try {
            this.b = AlgorithmIdentifier.a(objectInputStream.readObject());
        } catch (OptionalDataException e) {
            this.b = a;
        } catch (EOFException e2) {
            this.b = a;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (!this.b.equals(a)) {
            objectOutputStream.writeObject(this.b.f());
        }
    }
}
