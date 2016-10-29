package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class Evidence extends ASN1Object implements ASN1Choice {
    private TimeStampTokenEvidence a;

    public ASN1Primitive d() {
        if (this.a != null) {
            return new DERTaggedObject(false, 0, this.a);
        }
        return null;
    }
}
