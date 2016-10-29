package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class PolicyConstraints extends ASN1Object {
    private BigInteger a;
    private BigInteger b;

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(new DERTaggedObject(0, new ASN1Integer(this.a)));
        }
        if (this.b != null) {
            aSN1EncodableVector.a(new DERTaggedObject(1, new ASN1Integer(this.b)));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
