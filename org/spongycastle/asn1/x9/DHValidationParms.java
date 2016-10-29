package org.spongycastle.asn1.x9;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class DHValidationParms extends ASN1Object {
    private DERBitString a;
    private ASN1Integer b;

    public static DHValidationParms a(Object obj) {
        if (obj instanceof DHValidationParms) {
            return (DHValidationParms) obj;
        }
        if (obj != null) {
            return new DHValidationParms(ASN1Sequence.a(obj));
        }
        return null;
    }

    private DHValidationParms(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        this.a = DERBitString.a(aSN1Sequence.a(0));
        this.b = ASN1Integer.a(aSN1Sequence.a(1));
    }

    public DERBitString a() {
        return this.a;
    }

    public ASN1Integer b() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        return new DERSequence(aSN1EncodableVector);
    }
}
