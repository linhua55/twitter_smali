package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class RSAPublicKeyStructure extends ASN1Object {
    private BigInteger a;
    private BigInteger b;

    public RSAPublicKeyStructure(BigInteger bigInteger, BigInteger bigInteger2) {
        this.a = bigInteger;
        this.b = bigInteger2;
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
