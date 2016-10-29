package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.DERSequence;

/* compiled from: Twttr */
public class AlgorithmIdentifier extends ASN1Object {
    private ASN1ObjectIdentifier a;
    private ASN1Encodable b;
    private boolean c;

    public static AlgorithmIdentifier a(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return a(ASN1Sequence.a(aSN1TaggedObject, z));
    }

    public static AlgorithmIdentifier a(Object obj) {
        if (obj == null || (obj instanceof AlgorithmIdentifier)) {
            return (AlgorithmIdentifier) obj;
        }
        if (obj instanceof ASN1ObjectIdentifier) {
            return new AlgorithmIdentifier((ASN1ObjectIdentifier) obj);
        }
        if (obj instanceof String) {
            return new AlgorithmIdentifier((String) obj);
        }
        return new AlgorithmIdentifier(ASN1Sequence.a(obj));
    }

    public AlgorithmIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        this.c = false;
        this.a = aSN1ObjectIdentifier;
    }

    public AlgorithmIdentifier(String str) {
        this.c = false;
        this.a = new ASN1ObjectIdentifier(str);
    }

    public AlgorithmIdentifier(ASN1ObjectIdentifier aSN1ObjectIdentifier, ASN1Encodable aSN1Encodable) {
        this.c = false;
        this.c = true;
        this.a = aSN1ObjectIdentifier;
        this.b = aSN1Encodable;
    }

    public AlgorithmIdentifier(ASN1Sequence aSN1Sequence) {
        this.c = false;
        if (aSN1Sequence.h() < 1 || aSN1Sequence.h() > 2) {
            throw new IllegalArgumentException("Bad sequence size: " + aSN1Sequence.h());
        }
        this.a = ASN1ObjectIdentifier.a(aSN1Sequence.a(0));
        if (aSN1Sequence.h() == 2) {
            this.c = true;
            this.b = aSN1Sequence.a(1);
            return;
        }
        this.b = null;
    }

    public ASN1ObjectIdentifier b() {
        return new ASN1ObjectIdentifier(this.a.a());
    }

    public ASN1ObjectIdentifier a() {
        return this.a;
    }

    public ASN1Encodable c() {
        return this.b;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        if (this.c) {
            if (this.b != null) {
                aSN1EncodableVector.a(this.b);
            } else {
                aSN1EncodableVector.a(DERNull.a);
            }
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
