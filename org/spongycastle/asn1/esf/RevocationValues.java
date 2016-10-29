package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class RevocationValues extends ASN1Object {
    private ASN1Sequence a;
    private ASN1Sequence b;
    private OtherRevVals c;

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.a));
        }
        if (this.b != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.b));
        }
        if (this.c != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 2, this.c.d()));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
