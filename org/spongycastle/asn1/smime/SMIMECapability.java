package org.spongycastle.asn1.smime;

import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* compiled from: Twttr */
public class SMIMECapability extends ASN1Object {
    public static final ASN1ObjectIdentifier a;
    public static final ASN1ObjectIdentifier b;
    public static final ASN1ObjectIdentifier c;
    public static final ASN1ObjectIdentifier d;
    public static final ASN1ObjectIdentifier e;
    public static final ASN1ObjectIdentifier f;
    public static final ASN1ObjectIdentifier g;
    public static final ASN1ObjectIdentifier h;
    public static final ASN1ObjectIdentifier i;
    private ASN1ObjectIdentifier j;
    private ASN1Encodable k;

    static {
        a = PKCSObjectIdentifiers.aq;
        b = PKCSObjectIdentifiers.ar;
        c = PKCSObjectIdentifiers.as;
        d = new ASN1ObjectIdentifier("1.3.14.3.2.7");
        e = PKCSObjectIdentifiers.B;
        f = PKCSObjectIdentifiers.C;
        g = NISTObjectIdentifiers.k;
        h = NISTObjectIdentifiers.r;
        i = NISTObjectIdentifiers.y;
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.j);
        if (this.k != null) {
            aSN1EncodableVector.a(this.k);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
