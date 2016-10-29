package org.spongycastle.asn1.ua;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface UAObjectIdentifiers {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;

    static {
        a = new ASN1ObjectIdentifier("1.2.804.2.1.1.1");
        b = a.b("1.3.1.1");
        c = a.b("1.3.1.1.1.1");
    }
}
