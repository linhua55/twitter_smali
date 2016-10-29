package org.spongycastle.asn1.x9;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class DHDomainParameters extends ASN1Object {
    private ASN1Integer a;
    private ASN1Integer b;
    private ASN1Integer c;
    private ASN1Integer d;
    private DHValidationParms e;

    public static DHDomainParameters a(Object obj) {
        if (obj == null || (obj instanceof DHDomainParameters)) {
            return (DHDomainParameters) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new DHDomainParameters((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("Invalid DHDomainParameters: " + obj.getClass().getName());
    }

    private DHDomainParameters(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() < 3 || aSN1Sequence.h() > 5) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        Enumeration e = aSN1Sequence.e();
        this.a = ASN1Integer.a(e.nextElement());
        this.b = ASN1Integer.a(e.nextElement());
        this.c = ASN1Integer.a(e.nextElement());
        ASN1Encodable a = a(e);
        if (a != null && (a instanceof ASN1Integer)) {
            this.d = ASN1Integer.a((Object) a);
            a = a(e);
        }
        if (a != null) {
            this.e = DHValidationParms.a(a.d());
        }
    }

    private static ASN1Encodable a(Enumeration enumeration) {
        return enumeration.hasMoreElements() ? (ASN1Encodable) enumeration.nextElement() : null;
    }

    public ASN1Integer a() {
        return this.a;
    }

    public ASN1Integer b() {
        return this.b;
    }

    public ASN1Integer c() {
        return this.c;
    }

    public ASN1Integer e() {
        return this.d;
    }

    public DHValidationParms h() {
        return this.e;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(this.c);
        if (this.d != null) {
            aSN1EncodableVector.a(this.d);
        }
        if (this.e != null) {
            aSN1EncodableVector.a(this.e);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
