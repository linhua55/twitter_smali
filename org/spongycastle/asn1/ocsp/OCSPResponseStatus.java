package org.spongycastle.asn1.ocsp;

import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class OCSPResponseStatus extends ASN1Object {
    private ASN1Enumerated a;

    private OCSPResponseStatus(ASN1Enumerated aSN1Enumerated) {
        this.a = aSN1Enumerated;
    }

    public static OCSPResponseStatus a(Object obj) {
        if (obj instanceof OCSPResponseStatus) {
            return (OCSPResponseStatus) obj;
        }
        if (obj != null) {
            return new OCSPResponseStatus(ASN1Enumerated.a(obj));
        }
        return null;
    }

    public ASN1Primitive d() {
        return this.a;
    }
}
