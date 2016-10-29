package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class CertificatePair extends ASN1Object {
    private Certificate a;
    private Certificate b;

    public static CertificatePair a(Object obj) {
        if (obj == null || (obj instanceof CertificatePair)) {
            return (CertificatePair) obj;
        }
        if (obj instanceof ASN1Sequence) {
            return new CertificatePair((ASN1Sequence) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    private CertificatePair(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() == 1 || aSN1Sequence.h() == 2) {
            Enumeration e = aSN1Sequence.e();
            while (e.hasMoreElements()) {
                ASN1TaggedObject a = ASN1TaggedObject.a(e.nextElement());
                if (a.a() == 0) {
                    this.a = Certificate.a(a, true);
                } else if (a.a() == 1) {
                    this.b = Certificate.a(a, true);
                } else {
                    throw new IllegalArgumentException("Bad tag number: " + a.a());
                }
            }
            return;
        }
        throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
    }

    public CertificatePair(Certificate certificate, Certificate certificate2) {
        this.a = certificate;
        this.b = certificate2;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(new DERTaggedObject(0, this.a));
        }
        if (this.b != null) {
            aSN1EncodableVector.a(new DERTaggedObject(1, this.b));
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public Certificate a() {
        return this.a;
    }

    public Certificate b() {
        return this.b;
    }
}
