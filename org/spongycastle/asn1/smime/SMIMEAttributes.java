package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public interface SMIMEAttributes {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;

    static {
        a = PKCSObjectIdentifiers.ag;
        b = PKCSObjectIdentifiers.aN;
    }
}
