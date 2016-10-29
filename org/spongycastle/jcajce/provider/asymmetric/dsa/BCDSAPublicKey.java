package org.spongycastle.jcajce.provider.asymmetric.dsa;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.security.interfaces.DSAParams;
import java.security.interfaces.DSAPublicKey;
import java.security.spec.DSAParameterSpec;
import java.security.spec.DSAPublicKeySpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.DSAParameter;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DSAPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

/* compiled from: Twttr */
public class BCDSAPublicKey implements DSAPublicKey {
    private static final long serialVersionUID = 1752452449903495175L;
    private transient DSAParams a;
    private BigInteger y;

    BCDSAPublicKey(DSAPublicKeySpec dSAPublicKeySpec) {
        this.y = dSAPublicKeySpec.getY();
        this.a = new DSAParameterSpec(dSAPublicKeySpec.getP(), dSAPublicKeySpec.getQ(), dSAPublicKeySpec.getG());
    }

    BCDSAPublicKey(DSAPublicKey dSAPublicKey) {
        this.y = dSAPublicKey.getY();
        this.a = dSAPublicKey.getParams();
    }

    BCDSAPublicKey(DSAPublicKeyParameters dSAPublicKeyParameters) {
        this.y = dSAPublicKeyParameters.c();
        this.a = new DSAParameterSpec(dSAPublicKeyParameters.b().a(), dSAPublicKeyParameters.b().b(), dSAPublicKeyParameters.b().c());
    }

    public BCDSAPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        try {
            this.y = ((ASN1Integer) subjectPublicKeyInfo.c()).a();
            if (a(subjectPublicKeyInfo.a().c())) {
                DSAParameter a = DSAParameter.a(subjectPublicKeyInfo.a().c());
                this.a = new DSAParameterSpec(a.a(), a.b(), a.c());
            }
        } catch (IOException e) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    private boolean a(ASN1Encodable aSN1Encodable) {
        return (aSN1Encodable == null || DERNull.a.equals(aSN1Encodable.d())) ? false : true;
    }

    public String getAlgorithm() {
        return "DSA";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        if (this.a == null) {
            return KeyUtil.a(new AlgorithmIdentifier(X9ObjectIdentifiers.U), new ASN1Integer(this.y));
        }
        return KeyUtil.a(new AlgorithmIdentifier(X9ObjectIdentifiers.U, new DSAParameter(this.a.getP(), this.a.getQ(), this.a.getG()).d()), new ASN1Integer(this.y));
    }

    public DSAParams getParams() {
        return this.a;
    }

    public BigInteger getY() {
        return this.y;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("DSA Public Key").append(property);
        stringBuffer.append("            y: ").append(getY().toString(16)).append(property);
        return stringBuffer.toString();
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getQ().hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DSAPublicKey)) {
            return false;
        }
        DSAPublicKey dSAPublicKey = (DSAPublicKey) obj;
        if (getY().equals(dSAPublicKey.getY()) && getParams().getG().equals(dSAPublicKey.getParams().getG()) && getParams().getP().equals(dSAPublicKey.getParams().getP()) && getParams().getQ().equals(dSAPublicKey.getParams().getQ())) {
            return true;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.a = new DSAParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.getP());
        objectOutputStream.writeObject(this.a.getQ());
        objectOutputStream.writeObject(this.a.getG());
    }
}
