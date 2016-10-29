package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public interface CMSObjectIdentifiers {
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
        a = PKCSObjectIdentifiers.O;
        b = PKCSObjectIdentifiers.P;
        c = PKCSObjectIdentifiers.Q;
        d = PKCSObjectIdentifiers.R;
        e = PKCSObjectIdentifiers.S;
        f = PKCSObjectIdentifiers.T;
        g = PKCSObjectIdentifiers.au;
        h = PKCSObjectIdentifiers.aw;
        i = PKCSObjectIdentifiers.ax;
        j = PKCSObjectIdentifiers.ay;
        k = new ASN1ObjectIdentifier("1.3.6.1.5.5.7.16");
        l = k.b("2");
        m = k.b("4");
    }
}
