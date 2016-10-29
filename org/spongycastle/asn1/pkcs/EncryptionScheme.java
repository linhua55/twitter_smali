package org.spongycastle.asn1.pkcs;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;

/* compiled from: Twttr */
public class EncryptionScheme extends ASN1Object {
    private AlgorithmIdentifier a;

    private EncryptionScheme(ASN1Sequence aSN1Sequence) {
        this.a = AlgorithmIdentifier.a(aSN1Sequence);
    }

    public static EncryptionScheme a(Object obj) {
        if (obj instanceof EncryptionScheme) {
            return (EncryptionScheme) obj;
        }
        if (obj != null) {
            return new EncryptionScheme(ASN1Sequence.a(obj));
        }
        return null;
    }

    public ASN1ObjectIdentifier a() {
        return this.a.b();
    }

    public ASN1Encodable b() {
        return this.a.c();
    }

    public ASN1Primitive d() {
        return this.a.d();
    }
}
