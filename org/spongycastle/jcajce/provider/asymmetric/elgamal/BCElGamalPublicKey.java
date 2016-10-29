package org.spongycastle.jcajce.provider.asymmetric.elgamal;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.crypto.params.ElGamalPublicKeyParameters;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;
import org.spongycastle.jce.spec.ElGamalPublicKeySpec;

/* compiled from: Twttr */
public class BCElGamalPublicKey implements DHPublicKey, ElGamalPublicKey {
    static final long serialVersionUID = 8712728417091216948L;
    private transient ElGamalParameterSpec a;
    private BigInteger y;

    BCElGamalPublicKey(ElGamalPublicKeySpec elGamalPublicKeySpec) {
        this.y = elGamalPublicKeySpec.b();
        this.a = new ElGamalParameterSpec(elGamalPublicKeySpec.a().a(), elGamalPublicKeySpec.a().b());
    }

    BCElGamalPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.a = new ElGamalParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    BCElGamalPublicKey(ElGamalPublicKey elGamalPublicKey) {
        this.y = elGamalPublicKey.getY();
        this.a = elGamalPublicKey.b();
    }

    BCElGamalPublicKey(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.a = new ElGamalParameterSpec(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    BCElGamalPublicKey(ElGamalPublicKeyParameters elGamalPublicKeyParameters) {
        this.y = elGamalPublicKeyParameters.c();
        this.a = new ElGamalParameterSpec(elGamalPublicKeyParameters.b().a(), elGamalPublicKeyParameters.b().b());
    }

    BCElGamalPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        ElGamalParameter a = ElGamalParameter.a(subjectPublicKeyInfo.a().c());
        try {
            this.y = ((ASN1Integer) subjectPublicKeyInfo.c()).a();
            this.a = new ElGamalParameterSpec(a.a(), a.b());
        } catch (IOException e) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public String getAlgorithm() {
        return "ElGamal";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        try {
            return new SubjectPublicKeyInfo(new AlgorithmIdentifier(OIWObjectIdentifiers.l, new ElGamalParameter(this.a.a(), this.a.b())), new ASN1Integer(this.y)).a("DER");
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

    public BigInteger getY() {
        return this.y;
    }

    public int hashCode() {
        return ((getY().hashCode() ^ getParams().getG().hashCode()) ^ getParams().getP().hashCode()) ^ getParams().getL();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DHPublicKey)) {
            return false;
        }
        DHPublicKey dHPublicKey = (DHPublicKey) obj;
        if (getY().equals(dHPublicKey.getY()) && getParams().getG().equals(dHPublicKey.getParams().getG()) && getParams().getP().equals(dHPublicKey.getParams().getP()) && getParams().getL() == dHPublicKey.getParams().getL()) {
            return true;
        }
        return false;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.a = new ElGamalParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.a());
        objectOutputStream.writeObject(this.a.b());
    }
}
