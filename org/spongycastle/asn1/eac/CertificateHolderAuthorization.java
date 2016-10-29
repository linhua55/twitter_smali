package org.spongycastle.asn1.eac;

import java.util.Hashtable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERApplicationSpecific;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public class CertificateHolderAuthorization extends ASN1Object {
    public static final ASN1ObjectIdentifier c;
    static Hashtable d;
    static BidirectionalMap e;
    static Hashtable f;
    ASN1ObjectIdentifier a;
    DERApplicationSpecific b;

    static {
        c = EACObjectIdentifiers.a.b("3.1.2.1");
        d = new Hashtable();
        e = new BidirectionalMap();
        f = new Hashtable();
        d.put(Integers.a(2), "RADG4");
        d.put(Integers.a(1), "RADG3");
        e.put(Integers.a(192), "CVCA");
        e.put(Integers.a(128), "DV_DOMESTIC");
        e.put(Integers.a(64), "DV_FOREIGN");
        e.put(Integers.a(0), "IS");
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        aSN1EncodableVector.a(this.a);
        aSN1EncodableVector.a(this.b);
        return new DERApplicationSpecific(76, aSN1EncodableVector);
    }
}
