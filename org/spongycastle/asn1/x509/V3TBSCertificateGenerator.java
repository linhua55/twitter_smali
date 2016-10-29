package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.DERTaggedObject;

/* compiled from: Twttr */
public class V3TBSCertificateGenerator {
    DERTaggedObject a;

    public V3TBSCertificateGenerator() {
        this.a = new DERTaggedObject(true, 0, new ASN1Integer(2));
    }
}
