package org.spongycastle.asn1.ua;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class DSTU4145BinaryField extends ASN1Object {
    private int a;
    private int b;
    private int c;
    private int d;

    private DSTU4145BinaryField(ASN1Sequence aSN1Sequence) {
        this.a = ASN1Integer.a(aSN1Sequence.a(0)).e().intValue();
        if (aSN1Sequence.a(1) instanceof ASN1Integer) {
            this.b = ((ASN1Integer) aSN1Sequence.a(1)).e().intValue();
        } else if (aSN1Sequence.a(1) instanceof ASN1Sequence) {
            ASN1Sequence a = ASN1Sequence.a(aSN1Sequence.a(1));
            this.b = ASN1Integer.a(a.a(0)).e().intValue();
            this.c = ASN1Integer.a(a.a(1)).e().intValue();
            this.d = ASN1Integer.a(a.a(2)).e().intValue();
        } else {
            throw new IllegalArgumentException("object parse error");
        }
    }

    public static DSTU4145BinaryField a(Object obj) {
        if (obj instanceof DSTU4145BinaryField) {
            return (DSTU4145BinaryField) obj;
        }
        if (obj != null) {
            return new DSTU4145BinaryField(ASN1Sequence.a(obj));
        }
        return null;
    }

    public int a() {
        return this.a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.c;
    }

    public int e() {
        return this.d;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer((long) this.a));
        if (this.c == 0) {
            aSN1EncodableVector.a(new ASN1Integer((long) this.b));
        } else {
            ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
            aSN1EncodableVector2.a(new ASN1Integer((long) this.b));
            aSN1EncodableVector2.a(new ASN1Integer((long) this.c));
            aSN1EncodableVector2.a(new ASN1Integer((long) this.d));
            aSN1EncodableVector.a(new DERSequence(aSN1EncodableVector2));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
