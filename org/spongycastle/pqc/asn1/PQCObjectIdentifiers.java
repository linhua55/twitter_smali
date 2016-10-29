package org.spongycastle.pqc.asn1;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface PQCObjectIdentifiers {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;
    public static final ASN1ObjectIdentifier h;
    public static final ASN1ObjectIdentifier i;
    public static final ASN1ObjectIdentifier j;
    public static final ASN1ObjectIdentifier k;
    public static final ASN1ObjectIdentifier l;
    public static final ASN1ObjectIdentifier m;
    public static final ASN1ObjectIdentifier n;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.5.3.2");
        b = a.b("1");
        c = a.b("2");
        d = a.b("3");
        e = a.b("4");
        f = a.b("5");
        g = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.3");
        h = g.b("1");
        i = g.b("2");
        j = g.b("3");
        k = g.b("4");
        l = g.b("5");
        m = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.1");
        n = new ASN1ObjectIdentifier("1.3.6.1.4.1.8301.3.1.3.4.2");
    }
}
