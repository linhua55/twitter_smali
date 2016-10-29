package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;

/* compiled from: Twttr */
public class ResponseData extends ASN1Object {
    private static final ASN1Integer a;
    private boolean b;
    private ASN1Integer c;
    private ResponderID d;
    private ASN1GeneralizedTime e;
    private ASN1Sequence f;
    private Extensions g;

    static {
        a = new ASN1Integer(0);
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.b || !this.c.equals(a)) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.c));
        }
        aSN1EncodableVector.a(this.d);
        aSN1EncodableVector.a(this.e);
        aSN1EncodableVector.a(this.f);
        if (this.g != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.g));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
