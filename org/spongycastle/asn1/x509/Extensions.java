package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class Extensions extends ASN1Object {
    private Hashtable a;
    private Vector b;

    public static Extensions a(Object obj) {
        if (obj instanceof Extensions) {
            return (Extensions) obj;
        }
        if (obj != null) {
            return new Extensions(ASN1Sequence.a(obj));
        }
        return null;
    }

    private Extensions(ASN1Sequence aSN1Sequence) {
        this.a = new Hashtable();
        this.b = new Vector();
        Enumeration e = aSN1Sequence.e();
        while (e.hasMoreElements()) {
            Extension a = Extension.a(e.nextElement());
            this.a.put(a.a(), a);
            this.b.addElement(a.a());
        }
    }

    public Enumeration a() {
        return this.b.elements();
    }

    public Extension a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        return (Extension) this.a.get(aSN1ObjectIdentifier);
    }

    public ASN1Encodable b(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        Extension a = a(aSN1ObjectIdentifier);
        if (a != null) {
            return a.e();
        }
        return null;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        Enumeration elements = this.b.elements();
        while (elements.hasMoreElements()) {
            aSN1EncodableVector.a((Extension) this.a.get((ASN1ObjectIdentifier) elements.nextElement()));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
