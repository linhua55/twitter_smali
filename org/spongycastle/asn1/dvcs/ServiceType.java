package org.spongycastle.asn1.dvcs;

import java.math.BigInteger;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;

/* compiled from: Twttr */
public class ServiceType extends ASN1Object {
    public static final ServiceType a;
    public static final ServiceType b;
    public static final ServiceType c;
    public static final ServiceType d;
    private ASN1Enumerated e;

    static {
        a = new ServiceType(1);
        b = new ServiceType(2);
        c = new ServiceType(3);
        d = new ServiceType(4);
    }

    public ServiceType(int i) {
        this.e = new ASN1Enumerated(i);
    }

    public BigInteger a() {
        return this.e.a();
    }

    public ASN1Primitive d() {
        return this.e;
    }

    public String toString() {
        int intValue = this.e.a().intValue();
        StringBuilder append = new StringBuilder().append("").append(intValue);
        String str = intValue == a.a().intValue() ? "(CPD)" : intValue == b.a().intValue() ? "(VSD)" : intValue == c.a().intValue() ? "(VPKC)" : intValue == d.a().intValue() ? "(CCPD)" : "?";
        return append.append(str).toString();
    }
}
