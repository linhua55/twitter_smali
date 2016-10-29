package org.spongycastle.asn1.oiw;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class ElGamalParameter extends ASN1Object {
    ASN1Integer a;
    ASN1Integer b;

    public ElGamalParameter(BigInteger bigInteger, BigInteger bigInteger2) {
        this.a = new ASN1Integer(bigInteger);
        this.b = new ASN1Integer(bigInteger2);
    }

    private ElGamalParameter(ASN1Sequence aSN1Sequence) {
        Enumeration e = aSN1Sequence.e();
        this.a = (ASN1Integer) e.nextElement();
        this.b = (ASN1Integer) e.nextElement();
    }

    public static ElGamalParameter a(Object obj) {
        if (obj instanceof ElGamalParameter) {
            return (ElGamalParameter) obj;
        }
        if (obj != null) {
            return new ElGamalParameter(ASN1Sequence.a(obj));
        }
        return null;
    }

    public BigInteger a() {
        return this.a.e();
    }

    public BigInteger b() {
        return this.b.e();
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        return new DERSequence(aSN1EncodableVector);
    }
}
