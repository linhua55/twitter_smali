package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1GeneralizedTime;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class AttCertValidityPeriod extends ASN1Object {
    ASN1GeneralizedTime a;
    ASN1GeneralizedTime b;

    public static AttCertValidityPeriod a(Object obj) {
        if (obj instanceof AttCertValidityPeriod) {
            return (AttCertValidityPeriod) obj;
        }
        if (obj != null) {
            return new AttCertValidityPeriod(ASN1Sequence.a(obj));
        }
        return null;
    }

    private AttCertValidityPeriod(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        this.a = ASN1GeneralizedTime.a(aSN1Sequence.a(0));
        this.b = ASN1GeneralizedTime.a(aSN1Sequence.a(1));
    }

    public ASN1GeneralizedTime a() {
        return this.a;
    }

    public ASN1GeneralizedTime b() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        return new DERSequence(aSN1EncodableVector);
    }
}
