package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERBitString;

/* compiled from: Twttr */
public class NetscapeCertType extends DERBitString {
    public NetscapeCertType(DERBitString dERBitString) {
        super(dERBitString.e(), dERBitString.h());
    }

    public String toString() {
        return "NetscapeCertType: 0x" + Integer.toHexString(this.a[0] & 255);
    }
}
