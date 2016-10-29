package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface X509AttributeIdentifiers {
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

    static {
        a = new ASN1ObjectIdentifier("2.5.4.72");
        b = X509ObjectIdentifiers.n.b("4");
        c = X509ObjectIdentifiers.n.b("6");
        d = X509ObjectIdentifiers.n.b("10");
        e = X509ObjectIdentifiers.o.b("55");
        f = X509ObjectIdentifiers.m.b("10");
        g = f.b("1");
        h = f.b("2");
        i = f.b("3");
        j = f.b("4");
        k = f.b("6");
        l = new ASN1ObjectIdentifier("2.5.4.72");
        m = new ASN1ObjectIdentifier("2.5.1.5.55");
    }
}
