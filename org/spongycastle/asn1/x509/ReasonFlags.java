package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.DERBitString;

/* compiled from: Twttr */
public class ReasonFlags extends DERBitString {
    public ReasonFlags(DERBitString dERBitString) {
        super(dERBitString.e(), dERBitString.h());
    }
}
