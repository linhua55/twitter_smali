package org.spongycastle.asn1.x509;

import java.math.BigInteger;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1Enumerated;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.util.Integers;

/* compiled from: Twttr */
public class CRLReason extends ASN1Object {
    private static final String[] a;
    private static final Hashtable b;
    private ASN1Enumerated c;

    static {
        a = new String[]{"unspecified", "keyCompromise", "cACompromise", "affiliationChanged", "superseded", "cessationOfOperation", "certificateHold", "unknown", "removeFromCRL", "privilegeWithdrawn", "aACompromise"};
        b = new Hashtable();
    }

    public static CRLReason a(Object obj) {
        if (obj instanceof CRLReason) {
            return (CRLReason) obj;
        }
        if (obj != null) {
            return a(ASN1Enumerated.a(obj).a().intValue());
        }
        return null;
    }

    private CRLReason(int i) {
        this.c = new ASN1Enumerated(i);
    }

    public String toString() {
        String str;
        int intValue = a().intValue();
        if (intValue < 0 || intValue > 10) {
            str = "invalid";
        } else {
            str = a[intValue];
        }
        return "CRLReason: " + str;
    }

    public BigInteger a() {
        return this.c.a();
    }

    public ASN1Primitive d() {
        return this.c;
    }

    public static CRLReason a(int i) {
        Integer a = Integers.a(i);
        if (!b.containsKey(a)) {
            b.put(a, new CRLReason(i));
        }
        return (CRLReason) b.get(a);
    }
}
