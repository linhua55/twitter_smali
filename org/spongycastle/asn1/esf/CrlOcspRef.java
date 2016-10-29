package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class CrlOcspRef extends ASN1Object {
    private CrlListID a;
    private OcspListID b;
    private OtherRevRefs c;

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 0, this.a.d()));
        }
        if (this.b != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 1, this.b.d()));
        }
        if (this.c != null) {
            aSN1EncodableVector.a(new DERTaggedObject(true, 2, this.c.d()));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
