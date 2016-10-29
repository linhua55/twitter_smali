package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class IssuerSerial extends ASN1Object {
    GeneralNames a;
    ASN1Integer b;
    DERBitString c;

    public static IssuerSerial a(Object obj) {
        if (obj instanceof IssuerSerial) {
            return (IssuerSerial) obj;
        }
        if (obj != null) {
            return new IssuerSerial(ASN1Sequence.a(obj));
        }
        return null;
    }

    public static IssuerSerial a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return a(ASN1Sequence.a(aSN1TaggedObject, z));
    }

    private IssuerSerial(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() == 2 || aSN1Sequence.h() == 3) {
            this.a = GeneralNames.a(aSN1Sequence.a(0));
            this.b = ASN1Integer.a(aSN1Sequence.a(1));
            if (aSN1Sequence.h() == 3) {
                this.c = DERBitString.a(aSN1Sequence.a(2));
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
    }

    public GeneralNames a() {
        return this.a;
    }

    public ASN1Integer b() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        if (this.c != null) {
            aSN1EncodableVector.a(this.c);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
