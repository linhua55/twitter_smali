package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extensions;

/* compiled from: Twttr */
public class SingleResponse extends ASN1Object {
    private CertID a;
    private CertStatus b;
    private ASN1GeneralizedTime c;
    private ASN1GeneralizedTime d;
    private Extensions e;

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(this.c);
        if (this.d != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.d));
        }
        if (this.e != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.e));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
