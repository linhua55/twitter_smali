package org.spongycastle.asn1.pkcs;

import java.io.IOException;
import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1Set;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DEROctetString;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* compiled from: Twttr */
public class PrivateKeyInfo extends ASN1Object {
    private ASN1OctetString a;
    private AlgorithmIdentifier b;
    private ASN1Set c;

    public static PrivateKeyInfo a(Object obj) {
        if (obj instanceof PrivateKeyInfo) {
            return (PrivateKeyInfo) obj;
        }
        if (obj != null) {
            return new PrivateKeyInfo(ASN1Sequence.a(obj));
        }
        return null;
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable) throws IOException {
        this(algorithmIdentifier, aSN1Encodable, null);
    }

    public PrivateKeyInfo(AlgorithmIdentifier algorithmIdentifier, ASN1Encodable aSN1Encodable, ASN1Set aSN1Set) throws IOException {
        this.a = new DEROctetString(aSN1Encodable.d().a("DER"));
        this.b = algorithmIdentifier;
        this.c = aSN1Set;
    }

    public PrivateKeyInfo(ASN1Sequence aSN1Sequence) {
        Enumeration e = aSN1Sequence.e();
        if (((ASN1Integer) e.nextElement()).a().intValue() != 0) {
            throw new IllegalArgumentException("wrong version for private key info");
        }
        this.b = AlgorithmIdentifier.a(e.nextElement());
        this.a = ASN1OctetString.a(e.nextElement());
        if (e.hasMoreElements()) {
            this.c = ASN1Set.a((ASN1TaggedObject) e.nextElement(), false);
        }
    }

    public AlgorithmIdentifier a() {
        return this.b;
    }

    public AlgorithmIdentifier b() {
        return this.b;
    }

    public ASN1Encodable c() throws IOException {
        return ASN1Primitive.b(this.a.e());
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(new ASN1Integer(0));
        aSN1EncodableVector.a(this.b);
        aSN1EncodableVector.a(this.a);
        if (this.c != null) {
            aSN1EncodableVector.a(new DERTaggedObject(false, 0, this.c));
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
