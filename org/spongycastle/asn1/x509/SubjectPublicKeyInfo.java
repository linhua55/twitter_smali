package org.spongycastle.asn1.x509;

import java.io.IOException;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1InputStream;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERBitString;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class SubjectPublicKeyInfo extends ASN1Object {
    private AlgorithmIdentifier a;
    private DERBitString b;

    public static SubjectPublicKeyInfo a(Object obj) {
        if (obj instanceof SubjectPublicKeyInfo) {
            return (SubjectPublicKeyInfo) obj;
        }
        if (obj != null) {
            return new SubjectPublicKeyInfo(ASN1Sequence.a(obj));
        }
        return null;
    }

    public SubjectPublicKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable) throws IOException {
        this.b = new DERBitString(aSN1Encodable);
        this.a = algorithmIdentifier;
    }

    public SubjectPublicKeyInfo(AlgorithmIdentifier algorithmIdentifier, byte[] bArr) {
        this.b = new DERBitString(bArr);
        this.a = algorithmIdentifier;
    }

    public SubjectPublicKeyInfo(ASN1Sequence aSN1Sequence) {
        if (aSN1Sequence.h() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        Enumeration e = aSN1Sequence.e();
        this.a = AlgorithmIdentifier.a(e.nextElement());
        this.b = DERBitString.a(e.nextElement());
    }

    public AlgorithmIdentifier a() {
        return this.a;
    }

    public AlgorithmIdentifier b() {
        return this.a;
    }

    public ASN1Primitive c() throws IOException {
        return new ASN1InputStream(this.b.e()).d();
    }

    public DERBitString e() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        return new DERSequence(aSN1EncodableVector);
    }
}
