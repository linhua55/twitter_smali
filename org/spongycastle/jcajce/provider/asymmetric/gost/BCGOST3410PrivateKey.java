package org.spongycastle.jcajce.provider.asymmetric.gost;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.cryptopro.GOST3410PublicKeyAlgParameters;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.crypto.params.GOST3410PrivateKeyParameters;
import org.spongycastle.jcajce.provider.asymmetric.util.PKCS12BagAttributeCarrierImpl;
import org.spongycastle.jce.interfaces.GOST3410Params;
import org.spongycastle.jce.interfaces.GOST3410PrivateKey;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;
import org.spongycastle.jce.spec.GOST3410ParameterSpec;
import org.spongycastle.jce.spec.GOST3410PrivateKeySpec;
import org.spongycastle.jce.spec.GOST3410PublicKeyParameterSetSpec;

/* compiled from: Twttr */
public class BCGOST3410PrivateKey implements GOST3410PrivateKey, PKCS12BagAttributeCarrier {
    static final long serialVersionUID = 8581661527592305464L;
    private transient GOST3410Params a;
    private transient PKCS12BagAttributeCarrier b;
    private BigInteger x;

    protected BCGOST3410PrivateKey() {
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    BCGOST3410PrivateKey(GOST3410PrivateKey gOST3410PrivateKey) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = gOST3410PrivateKey.c();
        this.a = gOST3410PrivateKey.b();
    }

    BCGOST3410PrivateKey(GOST3410PrivateKeySpec gOST3410PrivateKeySpec) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = gOST3410PrivateKeySpec.a();
        this.a = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec(gOST3410PrivateKeySpec.b(), gOST3410PrivateKeySpec.c(), gOST3410PrivateKeySpec.d()));
    }

    BCGOST3410PrivateKey(PrivateKeyInfo privateKeyInfo) throws IOException {
        this.b = new PKCS12BagAttributeCarrierImpl();
        GOST3410PublicKeyAlgParameters gOST3410PublicKeyAlgParameters = new GOST3410PublicKeyAlgParameters((ASN1Sequence) privateKeyInfo.b().c());
        byte[] e = ASN1OctetString.a(privateKeyInfo.c()).e();
        byte[] bArr = new byte[e.length];
        for (int i = 0; i != e.length; i++) {
            bArr[i] = e[(e.length - 1) - i];
        }
        this.x = new BigInteger(1, bArr);
        this.a = GOST3410ParameterSpec.a(gOST3410PublicKeyAlgParameters);
    }

    BCGOST3410PrivateKey(GOST3410PrivateKeyParameters gOST3410PrivateKeyParameters, GOST3410ParameterSpec gOST3410ParameterSpec) {
        this.b = new PKCS12BagAttributeCarrierImpl();
        this.x = gOST3410PrivateKeyParameters.c();
        this.a = gOST3410ParameterSpec;
        if (gOST3410ParameterSpec == null) {
            throw new IllegalArgumentException("spec is null");
        }
    }

    public String getAlgorithm() {
        return "GOST3410";
    }

    public String getFormat() {
        return "PKCS#8";
    }

    public byte[] getEncoded() {
        byte[] bArr;
        int i = 0;
        byte[] toByteArray = c().toByteArray();
        if (toByteArray[0] == null) {
            bArr = new byte[(toByteArray.length - 1)];
        } else {
            bArr = new byte[toByteArray.length];
        }
        while (i != bArr.length) {
            bArr[i] = toByteArray[(toByteArray.length - 1) - i];
            i++;
        }
        try {
            PrivateKeyInfo privateKeyInfo;
            if (this.a instanceof GOST3410ParameterSpec) {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.i, new GOST3410PublicKeyAlgParameters(new ASN1ObjectIdentifier(this.a.a()), new ASN1ObjectIdentifier(this.a.b()))), new DEROctetString(bArr));
            } else {
                privateKeyInfo = new PrivateKeyInfo(new AlgorithmIdentifier(CryptoProObjectIdentifiers.i), new DEROctetString(bArr));
            }
            return privateKeyInfo.a("DER");
        } catch (IOException e) {
            return null;
        }
    }

    public GOST3410Params b() {
        return this.a;
    }

    public BigInteger c() {
        return this.x;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof GOST3410PrivateKey)) {
            return false;
        }
        GOST3410PrivateKey gOST3410PrivateKey = (GOST3410PrivateKey) obj;
        if (c().equals(gOST3410PrivateKey.c()) && b().d().equals(gOST3410PrivateKey.b().d()) && b().b().equals(gOST3410PrivateKey.b().b()) && a(b().c(), gOST3410PrivateKey.b().c())) {
            return true;
        }
        return false;
    }

    private boolean a(Object obj, Object obj2) {
        if (obj == obj2) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        return obj.equals(obj2);
    }

    public int hashCode() {
        return c().hashCode() ^ this.a.hashCode();
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
        String str = (String) objectInputStream.readObject();
        if (str != null) {
            this.a = new GOST3410ParameterSpec(str, (String) objectInputStream.readObject(), (String) objectInputStream.readObject());
        } else {
            this.a = new GOST3410ParameterSpec(new GOST3410PublicKeyParameterSetSpec((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject()));
            objectInputStream.readObject();
            objectInputStream.readObject();
        }
        this.b = new PKCS12BagAttributeCarrierImpl();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        if (this.a.a() != null) {
            objectOutputStream.writeObject(this.a.a());
            objectOutputStream.writeObject(this.a.b());
            objectOutputStream.writeObject(this.a.c());
            return;
        }
        objectOutputStream.writeObject(null);
        objectOutputStream.writeObject(this.a.d().a());
        objectOutputStream.writeObject(this.a.d().b());
        objectOutputStream.writeObject(this.a.d().c());
        objectOutputStream.writeObject(this.a.b());
        objectOutputStream.writeObject(this.a.c());
    }
}
