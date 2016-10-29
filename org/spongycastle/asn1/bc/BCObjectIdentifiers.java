package org.spongycastle.asn1.bc;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface BCObjectIdentifiers {
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
        a = new ASN1ObjectIdentifier("1.3.6.1.4.1.22554");
        b = a.b("1");
        c = b.b("1");
        d = b.b("2.1");
        e = b.b("2.2");
        f = b.b("2.3");
        g = b.b("2.4");
        h = c.b("1");
        i = c.b("2");
        j = d.b("1");
        k = d.b("2");
        l = i.b("1.2");
        m = i.b("1.22");
        n = i.b("1.42");
        o = k.b("1.2");
        p = k.b("1.22");
        q = k.b("1.42");
    }
}
