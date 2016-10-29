package org.spongycastle.asn1.iana;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface IANAObjectIdentifiers {
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
    public static final ASN1ObjectIdentifier q;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1");
        b = a.b("1");
        c = a.b("2");
        d = a.b("3");
        e = a.b("4");
        f = a.b("5");
        g = a.b("6");
        h = a.b("7");
        i = f.b("5");
        j = f.b("6");
        k = i.b("6");
        l = i.b("8");
        m = l.b("1");
        n = m.b("1");
        o = m.b("2");
        p = m.b("3");
        q = m.b("4");
    }
}
