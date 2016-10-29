package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public class GeneralSubtree extends ASN1Object {
    private static final BigInteger a;
    private GeneralName b;
    private ASN1Integer c;
    private ASN1Integer d;

    static {
        a = BigInteger.valueOf(0);
    }

    private GeneralSubtree(ASN1Sequence aSN1Sequence) {
        this.b = GeneralName.a(aSN1Sequence.a(0));
        ASN1TaggedObject a;
        switch (aSN1Sequence.h()) {
            case p.View_android_focusable /*1*/:
            case p.View_paddingStart /*2*/:
                a = ASN1TaggedObject.a(aSN1Sequence.a(1));
                switch (a.a()) {
                    case p.View_android_theme /*0*/:
                        this.c = ASN1Integer.a(a, false);
                    case p.View_android_focusable /*1*/:
                        this.d = ASN1Integer.a(a, false);
                    default:
                        throw new IllegalArgumentException("Bad tag number: " + a.a());
                }
            case p.View_paddingEnd /*3*/:
                a = ASN1TaggedObject.a(aSN1Sequence.a(1));
                if (a.a() != 0) {
                    throw new IllegalArgumentException("Bad tag number for 'minimum': " + a.a());
                }
                this.c = ASN1Integer.a(a, false);
                a = ASN1TaggedObject.a(aSN1Sequence.a(2));
                if (a.a() != 1) {
                    throw new IllegalArgumentException("Bad tag number for 'maximum': " + a.a());
                }
                this.d = ASN1Integer.a(a, false);
            default:
                throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
    }

    public static GeneralSubtree a(Object obj) {
        if (obj == null) {
            return null;
        }
        if (obj instanceof GeneralSubtree) {
            return (GeneralSubtree) obj;
        }
        return new GeneralSubtree(ASN1Sequence.a(obj));
    }

    public GeneralName a() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.b);
        if (!(this.c == null || this.c.a().equals(a))) {
            aSN1EncodableVector.a(new DERTaggedObject(false, 0, this.c));
        }
        if (this.d != null) {
            aSN1EncodableVector.a(new DERTaggedObject(false, 1, this.d));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
