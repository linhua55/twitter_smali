package org.spongycastle.jcajce.provider.asymmetric.dh;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.DHParameter;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.asn1.x509.SubjectPublicKeyInfo;
import org.spongycastle.asn1.x9.DHDomainParameters;
import org.spongycastle.asn1.x9.X9ObjectIdentifiers;
import org.spongycastle.crypto.params.DHPublicKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;

/* compiled from: Twttr */
public class BCDHPublicKey implements DHPublicKey {
    static final long serialVersionUID = -216691575254424324L;
    private transient DHParameterSpec a;
    private transient SubjectPublicKeyInfo b;
    private BigInteger y;

    BCDHPublicKey(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.a = new DHParameterSpec(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    BCDHPublicKey(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.a = dHPublicKey.getParams();
    }

    BCDHPublicKey(DHPublicKeyParameters dHPublicKeyParameters) {
        this.y = dHPublicKeyParameters.c();
        this.a = new DHParameterSpec(dHPublicKeyParameters.b().a(), dHPublicKeyParameters.b().b(), dHPublicKeyParameters.b().e());
    }

    BCDHPublicKey(BigInteger bigInteger, DHParameterSpec dHParameterSpec) {
        this.y = bigInteger;
        this.a = dHParameterSpec;
    }

    public BCDHPublicKey(SubjectPublicKeyInfo subjectPublicKeyInfo) {
        this.b = subjectPublicKeyInfo;
        try {
            this.y = ((ASN1Integer) subjectPublicKeyInfo.c()).a();
            Object a = ASN1Sequence.a(subjectPublicKeyInfo.a().c());
            ASN1ObjectIdentifier b = subjectPublicKeyInfo.a().b();
            if (b.equals(PKCSObjectIdentifiers.q) || a(a)) {
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
        } catch (IOException e) {
            throw new IllegalArgumentException("invalid info structure in DH public key");
        }
    }

    public String getAlgorithm() {
        return "DH";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        if (this.b != null) {
            return KeyUtil.a(this.b);
        }
        return KeyUtil.a(new AlgorithmIdentifier(PKCSObjectIdentifiers.q, new DHParameter(this.a.getP(), this.a.getG(), this.a.getL()).d()), new ASN1Integer(this.y));
    }

    public DHParameterSpec getParams() {
        return this.a;
    }

    public BigInteger getY() {
        return this.y;
    }

    private boolean a(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() == 2) {
            return true;
        }
        if (aSN1Sequence.h() > 3) {
            return false;
        }
        if (ASN1Integer.a(aSN1Sequence.a(2)).a().compareTo(BigInteger.valueOf((long) ASN1Integer.a(aSN1Sequence.a(0)).a().bitLength())) > 0) {
            return false;
        }
        return true;
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
        this.a = new DHParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), objectInputStream.readInt());
        this.b = null;
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(this.a.getP());
        objectOutputStream.writeObject(this.a.getG());
        objectOutputStream.writeInt(this.a.getL());
    }
}
