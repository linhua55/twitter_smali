package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

/* compiled from: Twttr */
public class Targets extends ASN1Object {
    private ASN1Sequence a;

    public static Targets a(Object obj) {
        if (obj instanceof Targets) {
            return (Targets) obj;
        }
        if (obj != null) {
            return new Targets(ASN1Sequence.a(obj));
        }
        return null;
    }

    private Targets(ASN1Sequence aSN1Sequence) {
        this.a = aSN1Sequence;
    }

    public Target[] a() {
        Target[] targetArr = new Target[this.a.h()];
        int i = 0;
        Enumeration e = this.a.e();
        while (e.hasMoreElements()) {
            int i2 = i + 1;
            targetArr[i] = Target.a(e.nextElement());
            i = i2;
        }
        return targetArr;
    }

    public ASN1Primitive d() {
        return this.a;
    }
}
