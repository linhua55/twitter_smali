package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x500.DirectoryString;

/* compiled from: Twttr */
public class Restriction extends ASN1Object {
    private DirectoryString a;

    public ASN1Primitive d() {
        return this.a.d();
    }
}
