package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface DVCSObjectIdentifiers {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1.5.5.7");
        b = new ASN1ObjectIdentifier("1.2.840.113549.1.9.16");
        c = a.b("48.4");
        d = a.b("3.10");
        e = b.b("1.7");
        f = b.b("1.8");
        g = b.b("2.29");
    }
}
