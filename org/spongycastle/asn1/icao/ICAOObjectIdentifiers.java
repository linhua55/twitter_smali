package org.spongycastle.asn1.icao;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface ICAOObjectIdentifiers {
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

    static {
        a = new ASN1ObjectIdentifier("2.23.136");
        b = a.b("1");
        c = b.b("1");
        d = c.b("1");
        e = c.b("2");
        f = c.b("3");
        g = c.b("4");
        h = c.b("5");
        i = c.b("6");
        j = i.b("1");
    }
}
