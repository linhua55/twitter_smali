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
public class RC2CBCParameter extends ASN1Object {
    ASN1Integer a;
    ASN1OctetString b;

    public static RC2CBCParameter a(Object obj) {
        if (obj instanceof RC2CBCParameter) {
            return (RC2CBCParameter) obj;
        }
        if (obj != null) {
            return new RC2CBCParameter(ASN1Sequence.a(obj));
        }
        return null;
    }

    public RC2CBCParameter(byte[] bArr) {
        this.a = null;
        this.b = new DEROctetString(bArr);
    }

    public RC2CBCParameter(int i, byte[] bArr) {
        this.a = new ASN1Integer((long) i);
        this.b = new DEROctetString(bArr);
    }

    private RC2CBCParameter(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() == 1) {
            this.a = null;
            this.b = (ASN1OctetString) aSN1Sequence.a(0);
            return;
        }
        this.a = (ASN1Integer) aSN1Sequence.a(0);
        this.b = (ASN1OctetString) aSN1Sequence.a(1);
    }

    public BigInteger a() {
        if (this.a == null) {
            return null;
        }
        return this.a.a();
    }

    public byte[] b() {
        return this.b.e();
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.a != null) {
            aSN1EncodableVector.a(this.a);
        }
        aSN1EncodableVector.a(this.b);
        return new DERSequence(aSN1EncodableVector);
    }
}
