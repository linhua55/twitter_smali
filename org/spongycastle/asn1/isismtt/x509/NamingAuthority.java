package org.spongycastle.asn1.isismtt.x509;

import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.isismtt.ISISMTTObjectIdentifiers;
import org.spongycastle.asn1.x500.DirectoryString;

/* compiled from: Twttr */
public class NamingAuthority extends ASN1Object {
    public static final ASN1ObjectIdentifier a;
    private ASN1ObjectIdentifier b;
    private String c;
    private DirectoryString d;

    static {
        a = new ASN1ObjectIdentifier(ISISMTTObjectIdentifiers.o + ".1");
    }

    public ASN1Primitive d() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.b != null) {
            aSN1EncodableVector.a(this.b);
        }
        if (this.c != null) {
            aSN1EncodableVector.a(new DERIA5String(this.c, true));
        }
        if (this.d != null) {
            aSN1EncodableVector.a(this.d);
        }
        return new DERSequence(aSN1EncodableVector);
    }
}
