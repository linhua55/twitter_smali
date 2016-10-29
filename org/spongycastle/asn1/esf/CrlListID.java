package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class CrlListID extends ASN1Object {
    private ASN1Sequence a;

    public ASN1Primitive d() {
        return new DERSequence(this.a);
    }
}
