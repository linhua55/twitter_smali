package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public class SMIMECapabilities extends ASN1Object {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    private ASN1Sequence g;

    static {
        a = PKCSObjectIdentifiers.aq;
        b = PKCSObjectIdentifiers.ar;
        c = PKCSObjectIdentifiers.as;
        d = new ASN1ObjectIdentifier("1.3.14.3.2.7");
        e = PKCSObjectIdentifiers.B;
        f = PKCSObjectIdentifiers.C;
    }

    public ASN1Primitive d() {
        return this.g;
    }
}
