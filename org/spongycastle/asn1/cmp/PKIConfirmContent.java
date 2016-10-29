package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Null;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;

/* compiled from: Twttr */
public class PKIConfirmContent extends ASN1Object {
    private ASN1Null a;

    public PKIConfirmContent() {
        this.a = DERNull.a;
    }

    public ASN1Primitive d() {
        return this.a;
    }
}
