package org.spongycastle.jcajce.provider.asymmetric.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OutputStream;
import org.spongycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* compiled from: Twttr */
public class PKCS12BagAttributeCarrierImpl implements PKCS12BagAttributeCarrier {
    private Hashtable a;
    private Vector b;

    PKCS12BagAttributeCarrierImpl(Hashtable hashtable, Vector vector) {
        this.a = hashtable;
        this.b = vector;
    }

    public PKCS12BagAttributeCarrierImpl() {
        this(new Hashtable(), new Vector());
    }

    public void a(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        if (this.a.containsKey(aSN1ObjectIdentifier)) {
            this.a.put(aSN1ObjectIdentifier, aSN1Encodable);
            return;
        }
        this.a.put(aSN1ObjectIdentifier, aSN1Encodable);
        this.b.addElement(aSN1ObjectIdentifier);
    }

    public ASN1Encodable a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (ASN1Encodable) this.a.get(aSN1ObjectIdentifier);
    }

    public Enumeration a() {
        return this.b.elements();
    }

    public void a(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.b.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ASN1OutputStream aSN1OutputStream = new ASN1OutputStream(byteArrayOutputStream);
        Enumeration a = a();
        while (a.hasMoreElements()) {
            ASN1Encodable aSN1Encodable = (ASN1ObjectIdentifier) a.nextElement();
            aSN1OutputStream.a(aSN1Encodable);
            aSN1OutputStream.a((ASN1Encodable) this.a.get(aSN1Encodable));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }

    public void a(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        Object readObject = objectInputStream.readObject();
        if (readObject instanceof Hashtable) {
            this.a = (Hashtable) readObject;
            this.b = (Vector) objectInputStream.readObject();
            return;
        }
        ASN1InputStream aSN1InputStream = new ASN1InputStream((byte[]) readObject);
        while (true) {
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) aSN1InputStream.d();
            if (aSN1ObjectIdentifier != null) {
                a(aSN1ObjectIdentifier, aSN1InputStream.d());
            } else {
                return;
            }
        }
    }
}
