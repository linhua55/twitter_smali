package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class AccessDescription extends ASN1Object {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    ASN1ObjectIdentifier c;
    GeneralName d;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.48.2");
        b = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.48.1");
    }

    public ASN1ObjectIdentifier a() {
        return this.c;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.c);
        aSN1EncodableVector.a(this.d);
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        return "AccessDescription: Oid(" + this.c.a() + ")";
    }
}
