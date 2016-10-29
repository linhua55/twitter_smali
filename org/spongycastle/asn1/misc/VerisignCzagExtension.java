package org.spongycastle.asn1.misc;

import org.spongycastle.asn1.DERIA5String;

/* compiled from: Twttr */
public class VerisignCzagExtension extends DERIA5String {
    public VerisignCzagExtension(DERIA5String dERIA5String) {
        super(dERIA5String.a());
    }

    public String toString() {
        return "VerisignCzagExtension: " + a();
    }
}
