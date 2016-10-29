package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class ResponderID extends ASN1Object implements ASN1Choice {
    private ASN1Encodable a;

    public ASN1Primitive d() {
        if (this.a instanceof ASN1OctetString) {
            return new DERTaggedObject(true, 2, this.a);
        }
        return new DERTaggedObject(true, 1, this.a);
    }
}
