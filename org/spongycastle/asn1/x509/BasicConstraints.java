package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Boolean;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class BasicConstraints extends ASN1Object {
    ASN1Boolean a;
    ASN1Integer b;

    public static BasicConstraints a(Object obj) {
        if (obj instanceof BasicConstraints) {
            return (BasicConstraints) obj;
        }
        if (obj instanceof X509Extension) {
            return a(X509Extension.a((X509Extension) obj));
        }
        if (obj != null) {
            return new BasicConstraints(ASN1Sequence.a(obj));
        }
        return null;
    }

    private BasicConstraints(ASN1Sequence aSN1Sequence) {
        this.a = ASN1Boolean.a(false);
        this.b = null;
        if (aSN1Sequence.h() == 0) {
            this.a = null;
            this.b = null;
            return;
        }
        if (aSN1Sequence.a(0) instanceof ASN1Boolean) {
            this.a = ASN1Boolean.a(aSN1Sequence.a(0));
        } else {
            this.a = null;
            this.b = ASN1Integer.a(aSN1Sequence.a(0));
        }
        if (aSN1Sequence.h() <= 1) {
            return;
        }
        if (this.a != null) {
            this.b = ASN1Integer.a(aSN1Sequence.a(1));
            return;
        }
        throw new IllegalArgumentException("wrong sequence in constructor");
    }

    public boolean a() {
        return this.a != null && this.a.a();
    }

    public BigInteger b() {
        if (this.b != null) {
            return this.b.a();
        }
        return null;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(this.a);
        }
        if (this.b != null) {
            aSN1EncodableVector.a(this.b);
        }
        return new DERSequence(aSN1EncodableVector);
    }

    public String toString() {
        if (this.b != null) {
            return "BasicConstraints: isCa(" + a() + "), pathLenConstraint = " + this.b.a();
        }
        if (this.a == null) {
            return "BasicConstraints: isCa(false)";
        }
        return "BasicConstraints: isCa(" + a() + ")";
    }
}
