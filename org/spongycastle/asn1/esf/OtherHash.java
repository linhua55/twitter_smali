package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class OtherHash extends ASN1Object implements ASN1Choice {
    private ASN1OctetString a;
    private OtherHashAlgAndValue b;

    public ASN1Primitive d() {
        if (this.b == null) {
            return this.a;
        }
        return this.b.d();
    }
}
