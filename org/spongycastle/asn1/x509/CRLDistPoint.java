package org.spongycastle.asn1.x509;

import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;

/* compiled from: Twttr */
public class CRLDistPoint extends ASN1Object {
    ASN1Sequence a;

    public static CRLDistPoint a(Object obj) {
        if (obj instanceof CRLDistPoint) {
            return (CRLDistPoint) obj;
        }
        if (obj != null) {
            return new CRLDistPoint(ASN1Sequence.a(obj));
        }
        return null;
    }

    private CRLDistPoint(ASN1Sequence aSN1Sequence) {
        this.a = null;
        this.a = aSN1Sequence;
    }

    public DistributionPoint[] a() {
        DistributionPoint[] distributionPointArr = new DistributionPoint[this.a.h()];
        for (int i = 0; i != this.a.h(); i++) {
            distributionPointArr[i] = DistributionPoint.a(this.a.a(i));
        }
        return distributionPointArr;
    }

    public ASN1Primitive d() {
        return this.a;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String property = System.getProperty("line.separator");
        stringBuffer.append("CRLDistPoint:");
        stringBuffer.append(property);
        DistributionPoint[] a = a();
        for (int i = 0; i != a.length; i++) {
            stringBuffer.append("    ");
            stringBuffer.append(a[i]);
            stringBuffer.append(property);
        }
        return stringBuffer.toString();
    }
}
