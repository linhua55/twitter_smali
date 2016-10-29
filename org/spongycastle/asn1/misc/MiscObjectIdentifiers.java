package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface MiscObjectIdentifiers {
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
    public static final ASN1ObjectIdentifier o;
    public static final ASN1ObjectIdentifier p;

    static {
        a = new ASN1ObjectIdentifier("2.16.840.1.113730.1");
        b = a.b("1");
        c = a.b("2");
        d = a.b("3");
        e = a.b("4");
        f = a.b("7");
        g = a.b("8");
        h = a.b("12");
        i = a.b("13");
        j = new ASN1ObjectIdentifier("2.16.840.1.113733.1");
        k = j.b("6.3");
        l = j.b("6.15");
        m = new ASN1ObjectIdentifier("2.16.840.1.113719");
        n = m.b("1.9.4.1");
        o = new ASN1ObjectIdentifier("1.2.840.113533.7");
        p = o.b("65.0");
    }
}
