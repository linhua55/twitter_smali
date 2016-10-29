package org.spongycastle.jce.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.oiw.ElGamalParameter;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.jcajce.provider.asymmetric.util.KeyUtil;
import org.spongycastle.jce.interfaces.ElGamalPublicKey;
import org.spongycastle.jce.spec.ElGamalParameterSpec;

/* compiled from: Twttr */
public class JCEElGamalPublicKey implements DHPublicKey, ElGamalPublicKey {
    static final long serialVersionUID = 8712728417091216948L;
    private ElGamalParameterSpec elSpec;
    private BigInteger y;

    public String getAlgorithm() {
        return "ElGamal";
    }

    public String getFormat() {
        return "X.509";
    }

    public byte[] getEncoded() {
        return KeyUtil.a(new AlgorithmIdentifier(OIWObjectIdentifiers.l, new ElGamalParameter(this.elSpec.a(), this.elSpec.b())), new ASN1Integer(this.y));
    }

    public ElGamalParameterSpec b() {
        return this.elSpec;
    }

    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.a(), this.elSpec.b());
    }

    public BigInteger getY() {
        return this.y;
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.y = (BigInteger) objectInputStream.readObject();
        this.elSpec = new ElGamalParameterSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.elSpec.a());
        objectOutputStream.writeObject(this.elSpec.b());
    }
}
