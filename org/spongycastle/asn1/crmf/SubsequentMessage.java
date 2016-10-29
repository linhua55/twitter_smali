package org.spongycastle.asn1.crmf;

import org.spongycastle.asn1.ASN1Integer;

/* compiled from: Twttr */
public class SubsequentMessage extends ASN1Integer {
    public static final SubsequentMessage b;
    public static final SubsequentMessage c;

    static {
        b = new SubsequentMessage(0);
        c = new SubsequentMessage(1);
    }

    private SubsequentMessage(int i) {
        super((long) i);
    }
}
