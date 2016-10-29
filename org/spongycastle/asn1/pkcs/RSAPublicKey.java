package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class RSAPublicKey extends ASN1Object {
    private BigInteger a;
    private BigInteger b;

    public static RSAPublicKey a(Object obj) {
        if (obj instanceof RSAPublicKey) {
            return (RSAPublicKey) obj;
        }
        if (obj != null) {
            return new RSAPublicKey(ASN1Sequence.a(obj));
        }
        return null;
    }

    public RSAPublicKey(BigInteger bigInteger, BigInteger bigInteger2) {
        this.a = bigInteger;
        this.b = bigInteger2;
    }

    private RSAPublicKey(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        Enumeration e = aSN1Sequence.e();
        this.a = ASN1Integer.a(e.nextElement()).e();
        this.b = ASN1Integer.a(e.nextElement()).e();
    }

    public BigInteger a() {
        return this.a;
    }

    public BigInteger b() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(a()));
        aSN1EncodableVector.a(new ASN1Integer(b()));
        return new DERSequence(aSN1EncodableVector);
    }
}
