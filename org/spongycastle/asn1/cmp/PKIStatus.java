package org.spongycastle.asn1.cmp;

import org.spongycastle.asn1.ASN1Integer;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class PKIStatus extends ASN1Object {
    public static final PKIStatus a;
    public static final PKIStatus b;
    public static final PKIStatus c;
    public static final PKIStatus d;
    public static final PKIStatus e;
    public static final PKIStatus f;
    public static final PKIStatus g;
    private ASN1Integer h;

    static {
        a = new PKIStatus(0);
        b = new PKIStatus(1);
        c = new PKIStatus(2);
        d = new PKIStatus(3);
        e = new PKIStatus(4);
        f = new PKIStatus(5);
        g = new PKIStatus(6);
    }

    private PKIStatus(int i) {
        this(new ASN1Integer((long) i));
    }

    private PKIStatus(ASN1Integer aSN1Integer) {
        this.h = aSN1Integer;
    }

    public ASN1Primitive d() {
        return this.h;
    }
}
