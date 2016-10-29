package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public interface CRMFObjectIdentifiers {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;
    public static final ASN1ObjectIdentifier h;

    static {
        a = new ASN1ObjectIdentifier("1.3.6.1.5.5.7");
        b = a.b("5");
        c = b.b("1");
        d = c.b("1");
        e = c.b("2");
        f = c.b("3");
        g = c.b("4");
        h = PKCSObjectIdentifiers.at.b("21");
    }
}