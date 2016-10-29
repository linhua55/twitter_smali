package org.spongycastle.asn1.dvcs;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.x509.Extension;

/* compiled from: Twttr */
public class CertEtcToken extends ASN1Object implements ASN1Choice {
    private static final boolean[] a;
    private int b;
    private ASN1Encodable c;
    private Extension d;

    static {
        a = new boolean[]{false, true, false, true, false, true, false, false, true};
    }

    public ASN1Primitive d() {
        if (this.d == null) {
            return new DERTaggedObject(a[this.b], this.b, this.c);
        }
        return this.d.d();
    }

    public String toString() {
        return "CertEtcToken {\n" + this.c + "}\n";
    }
}
