package org.spongycastle.asn1.pkcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class PKCS12PBEParams extends ASN1Object {
    ASN1Integer a;
    ASN1OctetString b;

    public PKCS12PBEParams(byte[] bArr, int i) {
        this.b = new DEROctetString(bArr);
        this.a = new ASN1Integer((long) i);
    }

    private PKCS12PBEParams(ASN1Sequence aSN1Sequence) {
        this.b = (ASN1OctetString) aSN1Sequence.a(0);
        this.a = ASN1Integer.a(aSN1Sequence.a(1));
    }

    public static PKCS12PBEParams a(Object obj) {
        if (obj instanceof PKCS12PBEParams) {
            return (PKCS12PBEParams) obj;
        }
        if (obj != null) {
            return new PKCS12PBEParams(ASN1Sequence.a(obj));
        }
        return null;
    }

    public BigInteger a() {
        return this.a.a();
    }

    public byte[] b() {
        return this.b.e();
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(this.a);
        return new DERSequence(aSN1EncodableVector);
    }
}
