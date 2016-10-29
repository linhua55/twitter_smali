package org.spongycastle.asn1.x509.qualified;

import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class Iso4217CurrencyCode extends ASN1Object implements ASN1Choice {
    ASN1Encodable a;

    public ASN1Primitive d() {
        return this.a.d();
    }
}
