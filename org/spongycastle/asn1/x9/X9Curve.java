package org.spongycastle.asn1.x9;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;

/* compiled from: Twttr */
public class X9Curve extends ASN1Object implements X9ObjectIdentifiers {
    private ECCurve al;
    private byte[] am;
    private ASN1ObjectIdentifier an;

    public X9Curve(ECCurve eCCurve, byte[] bArr) {
        this.an = null;
        this.al = eCCurve;
        this.am = bArr;
        c();
    }

    public X9Curve(X9FieldID x9FieldID, ASN1Sequence aSN1Sequence) {
        this.an = null;
        this.an = x9FieldID.a();
        if (this.an.equals(c)) {
            BigInteger a = ((ASN1Integer) x9FieldID.b()).a();
            this.al = new Fp(a, new X9FieldElement(a, (ASN1OctetString) aSN1Sequence.a(0)).a().a(), new X9FieldElement(a, (ASN1OctetString) aSN1Sequence.a(1)).a().a());
        } else if (this.an.equals(d)) {
            int intValue;
            int i;
            int i2;
            ASN1Sequence a2 = ASN1Sequence.a(x9FieldID.b());
            int intValue2 = ((ASN1Integer) a2.a(0)).a().intValue();
            ASN1ObjectIdentifier aSN1ObjectIdentifier = (ASN1ObjectIdentifier) a2.a(1);
            if (aSN1ObjectIdentifier.equals(f)) {
                intValue = ASN1Integer.a(a2.a(2)).a().intValue();
                i = 0;
                i2 = 0;
            } else if (aSN1ObjectIdentifier.equals(g)) {
                ASN1Sequence a3 = ASN1Sequence.a(a2.a(2));
                intValue = ASN1Integer.a(a3.a(0)).a().intValue();
                i2 = ASN1Integer.a(a3.a(1)).a().intValue();
                i = ASN1Integer.a(a3.a(2)).a().intValue();
            } else {
                throw new IllegalArgumentException("This type of EC basis is not implemented");
            }
            X9FieldElement x9FieldElement = new X9FieldElement(intValue2, intValue, i2, i, (ASN1OctetString) aSN1Sequence.a(0));
            X9FieldElement x9FieldElement2 = new X9FieldElement(intValue2, intValue, i2, i, (ASN1OctetString) aSN1Sequence.a(1));
            BigInteger a4 = x9FieldElement.a().a();
            this.al = new F2m(intValue2, intValue, i2, i, r8, x9FieldElement2.a().a());
        } else {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        }
        if (aSN1Sequence.h() == 3) {
            this.am = ((DERBitString) aSN1Sequence.a(2)).e();
        }
    }

    private void c() {
        if (ECAlgorithms.b(this.al)) {
            this.an = c;
        } else if (ECAlgorithms.a(this.al)) {
            this.an = d;
        } else {
            throw new IllegalArgumentException("This type of ECCurve is not implemented");
        }
    }

    public ECCurve a() {
        return this.al;
    }

    public byte[] b() {
        return this.am;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.an.equals(c)) {
            aSN1EncodableVector.a(new X9FieldElement(this.al.g()).d());
            aSN1EncodableVector.a(new X9FieldElement(this.al.h()).d());
        } else if (this.an.equals(d)) {
            aSN1EncodableVector.a(new X9FieldElement(this.al.g()).d());
            aSN1EncodableVector.a(new X9FieldElement(this.al.h()).d());
        }
        if (this.am != null) {
            aSN1EncodableVector.a(new DERBitString(this.am));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
