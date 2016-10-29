package org.spongycastle.asn1.esf;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERNull;

/* compiled from: Twttr */
public class SignaturePolicyIdentifier extends ASN1Object {
    private SignaturePolicyId a;
    private boolean b;

    public SignaturePolicyIdentifier() {
        this.b = true;
    }

    public ASN1Primitive d() {
        if (this.b) {
            return DERNull.a;
        }
        return this.a.d();
    }
}
