package org.spongycastle.asn1.microsoft;

import org.spongycastle.asn1.ASN1ObjectIdentifier;

/* compiled from: Twttr */
public interface MicrosoftObjectIdentifiers {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1.4.1.311");
        b = a.b("20.2");
        c = a.b("21.1");
        d = a.b("21.2");
        e = a.b("21.7");
        f = a.b("21.10");
    }
}
