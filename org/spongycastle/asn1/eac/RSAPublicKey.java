package org.spongycastle.asn1.eac;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class RSAPublicKey extends PublicKeyDataObject {
    private static int d;
    private static int e;
    private ASN1ObjectIdentifier a;
    private BigInteger b;
    private BigInteger c;

    static {
        d = 1;
        e = 2;
    }

    public BigInteger a() {
        return this.b;
    }

    public BigInteger b() {
        return this.c;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(new UnsignedInteger(1, a()));
        aSN1EncodableVector.a(new UnsignedInteger(2, b()));
        return new DERSequence(aSN1EncodableVector);
    }
}
