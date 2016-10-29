package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPrivateKeySpec;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DHPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* compiled from: Twttr */
public class BCDHPrivateKey implements DHPrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 311058815616901812L;
    private transient DHParameterSpec a;
    private transient PrivateKeyInfo b;
    private transient PKCS12BagAttributeCarrierImpl c;
    private BigInteger x;

    protected BCDHPrivateKey() {
        this.c = new PKCS12BagAttributeCarrierImpl();
    }

    BCDHPrivateKey(DHPrivateKey dHPrivateKey) {
        this.c = new PKCS12BagAttributeCarrierImpl();
        this.x = dHPrivateKey.getX();
        this.a = dHPrivateKey.getParams();
    }

    BCDHPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.c = new PKCS12BagAttributeCarrierImpl();
        this.x = dHPrivateKeySpec.getX();
        this.a = new DHParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    public BCDHPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.c = new PKCS12BagAttributeCarrierImpl();
        Object a = ASN1Sequence.a(privateKeyInfo.a().c());
        ASN1Integer aSN1Integer = (ASN1Integer) privateKeyInfo.c();
        ASN1ObjectIdentifier b = privateKeyInfo.a().b();
        this.b = privateKeyInfo;
        this.x = aSN1Integer.a();
        if (b.equals(PKCSObjectIdentifiers.q)) {
            DHParameter a2 = DHParameter.a(a);
            if (a2.c() != null) {
                this.a = new DHParameterSpec(a2.a(), a2.b(), a2.c().intValue());
            } else {
                this.a = new DHParameterSpec(a2.a(), a2.b());
            }
        } else if (b.equals(X9ObjectIdentifiers.ab)) {
            DHDomainParameters a3 = DHDomainParameters.a(a);
            this.a = new DHParameterSpec(a3.a().a(), a3.b().a());
        } else {
            throw new IllegalArgumentException("unknown algorithm type: " + b);
        }
    }

    BCDHPrivateKey(DHPrivateKeyParameters dHPrivateKeyParameters) {
        this.c = new PKCS12BagAttributeCarrierImpl();
        this.x = dHPrivateKeyParameters.c();
        this.a = new DHParameterSpec(dHPrivateKeyParameters.b().a(), dHPrivateKeyParameters.b().b(), dHPrivateKeyParameters.b().e());
    }

    public String getAlgorithm() {
        return "DH";
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        try {
            if (this.b != null) {
                return this.b.a("DER");
            }
            return new PrivateKeyInfo(new AlgorithmIdentifier(PKCSObjectIdentifiers.q, new DHParameter(this.a.getP(), this.a.getG(), this.a.getL()).d()), new ASN1Integer(getX())).a("DER");
        } catch (Exception e) {
            return null;
        }
    }

    public DHParameterSpec getParams() {
        return this.a;
    }

    public BigInteger getX() {
        return this.x;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPrivateKey)) {
            return false;
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) obj;
        if (getX().equals(dHPrivateKey.getX()) && getParams().getG().equals(dHPrivateKey.getParams().getG()) && getParams().getP().equals(dHPrivateKey.getParams().getP()) && getParams().getL() == dHPrivateKey.getParams().getL()) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return ((getX().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.c.a(aSN1ObjectIdentifier, aSN1Encodable);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return this.c.a(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.c.a();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.a = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.b = null;
        this.c = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.getP());
        objectOutputStream.writeObject(this.a.getG());
        objectOutputStream.writeInt(this.a.getL());
    }
}
