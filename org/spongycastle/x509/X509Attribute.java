package org.spongycastle.x509;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.x509.Attribute;

/* compiled from: Twttr */
public class X509Attribute extends ASN1Object {
    Attribute a;

    X509Attribute(ASN1Encodable aSN1Encodable) {
        this.a = Attribute.a(aSN1Encodable);
    }

    public String a() {
        return this.a.a().a();
    }

    public ASN1Primitive d() {
        return this.a.d();
    }
}
