package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class AuthorityInformationAccess extends ASN1Object {
    private AccessDescription[] a;

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        for (int i = 0; i != this.a.length; i++) {
            aSN1EncodableVector.a(this.a[i]);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        return "AuthorityInformationAccess: Oid(" + this.a[0].a().a() + ")";
    }
}
