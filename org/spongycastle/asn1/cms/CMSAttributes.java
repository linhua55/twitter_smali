package org.spongycastle.asn1.cms;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public interface CMSAttributes {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;

    static {
        a = PKCSObjectIdentifiers.X;
        b = PKCSObjectIdentifiers.Y;
        c = PKCSObjectIdentifiers.Z;
        d = PKCSObjectIdentifiers.aa;
        e = PKCSObjectIdentifiers.aK;
    }
}
