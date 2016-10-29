package org.spongycastle.jcajce.provider.asymmetric.elgamal;

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
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.ElGamalPrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.ElGamalPrivateKey;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
import org.spongycastle.jce.spec.ElGamalPrivateKeySpec;

/* compiled from: Twttr */
public class BCElGamalPrivateKey implements DHPrivateKey, ElGamalPrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 4819350091141529678L;
    private transient ElGamalParameterSpec a;
    private transient PKCS12BagAttributeCarrierImpl b;
    private BigInteger x;

    protected BCElGamalPrivateKey() {
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    BCElGamalPrivateKey(ElGamalPrivateKey elGamalPrivateKey) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = elGamalPrivateKey.getX();
        this.a = elGamalPrivateKey.b();
    }

    BCElGamalPrivateKey(DHPrivateKey dHPrivateKey) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = dHPrivateKey.getX();
        this.a = new ElGamalParameterSpec(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG());
    }

    BCElGamalPrivateKey(ElGamalPrivateKeySpec elGamalPrivateKeySpec) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = elGamalPrivateKeySpec.b();
        this.a = new ElGamalParameterSpec(elGamalPrivateKeySpec.a().a(), elGamalPrivateKeySpec.a().b());
    }

    BCElGamalPrivateKey(DHPrivateKeySpec dHPrivateKeySpec) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = dHPrivateKeySpec.getX();
        this.a = new ElGamalParameterSpec(dHPrivateKeySpec.getP(), dHPrivateKeySpec.getG());
    }

    BCElGamalPrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.b = new PKCS12BagAttributeCarrierImpl();
        ElGamalParameter a = ElGamalParameter.a(privateKeyInfo.a().c());
        this.x = ASN1Integer.a(privateKeyInfo.c()).a();
        this.a = new ElGamalParameterSpec(a.a(), a.b());
    }

    BCElGamalPrivateKey(ElGamalPrivateKeyParameters elGamalPrivateKeyParameters) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = elGamalPrivateKeyParameters.c();
        this.a = new ElGamalParameterSpec(elGamalPrivateKeyParameters.b().a(), elGamalPrivateKeyParameters.b().b());
    }

    public String getAlgorithm() {
        return "ElGamal";
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        try {
            return new PrivateKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.l, new ElGamalParameter(this.a.a(), this.a.b())), new ASN1Integer(getX())).a("DER");
        } catch (IOException e) {
            return null;
        }
    }

    public ElGamalParameterSpec b() {
        return this.a;
    }

    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.a.a(), this.a.b());
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

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.a = new ElGamalParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.a());
        objectOutputStream.writeObject(this.a.b());
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
}
