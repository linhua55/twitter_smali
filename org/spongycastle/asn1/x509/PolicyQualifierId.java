package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public class PolicyQualifierId extends ASN1ObjectIdentifier {
    public static final PolicyQualifierId b;
    public static final PolicyQualifierId c;

    private PolicyQualifierId(String str) {
        super(str);
    }

    static {
        b = new PolicyQualifierId("1.3.6.1.5.5.7.2.1");
        c = new PolicyQualifierId("1.3.6.1.5.5.7.2.2");
    }
}
