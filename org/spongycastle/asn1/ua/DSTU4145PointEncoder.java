package org.spongycastle.asn1.ua;

import java.math.BigInteger;
import java.util.Random;
import org.spongycastle.math.ec.ECConstants;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECFieldElement;
import org.spongycastle.math.ec.ECPoint;

/* compiled from: Twttr */
public abstract class DSTU4145PointEncoder {
    private static ECFieldElement a(ECFieldElement eCFieldElement) {
        ECFieldElement eCFieldElement2 = eCFieldElement;
        for (int i = 1; i < eCFieldElement.b(); i++) {
            eCFieldElement2 = eCFieldElement2.e().a(eCFieldElement);
        }
        return eCFieldElement2;
    }

    private static ECFieldElement a(ECCurve eCCurve, ECFieldElement eCFieldElement) {
        if (eCFieldElement.j()) {
            return eCFieldElement;
        }
        ECFieldElement eCFieldElement2;
        ECFieldElement a = eCCurve.a(ECConstants.c);
        Random random = new Random();
        int b = eCFieldElement.b();
        do {
            ECFieldElement a2 = eCCurve.a(new BigInteger(b, random));
            int i = 1;
            ECFieldElement eCFieldElement3 = eCFieldElement;
            eCFieldElement2 = a;
            while (i <= b - 1) {
                eCFieldElement3 = eCFieldElement3.e();
                ECFieldElement a3 = eCFieldElement2.e().a(eCFieldElement3.c(a2));
                eCFieldElement3 = eCFieldElement3.a(eCFieldElement);
                i++;
                eCFieldElement2 = a3;
            }
            if (!eCFieldElement3.j()) {
                return null;
            }
        } while (eCFieldElement2.e().a(eCFieldElement2).j());
        return eCFieldElement2;
    }

    public static byte[] a(ECPoint eCPoint) {
        ECPoint p = eCPoint.p();
        ECFieldElement g = p.g();
        byte[] l = g.l();
        if (!g.j()) {
            int length;
            if (a(p.h().d(g)).i()) {
                length = l.length - 1;
                l[length] = (byte) (l[length] | 1);
            } else {
                length = l.length - 1;
                l[length] = (byte) (l[length] & 254);
            }
        }
        return l;
    }

    public static ECPoint a(ECCurve eCCurve, byte[] bArr) {
        ECFieldElement g;
        ECFieldElement a = eCCurve.a(BigInteger.valueOf((long) (bArr[bArr.length - 1] & 1)));
        ECFieldElement a2 = eCCurve.a(new BigInteger(1, bArr));
        if (!a(a2).equals(eCCurve.g())) {
            a2 = a2.c();
        }
        if (a2.j()) {
            g = eCCurve.h().g();
        } else {
            g = a(eCCurve, a2.e().f().c(eCCurve.h()).a(eCCurve.g()).a(a2));
            if (g != null) {
                if (!a(g).equals(a)) {
                    g = g.c();
                }
                g = a2.c(g);
            } else {
                g = null;
            }
        }
        if (g != null) {
            return eCCurve.b(a2.a(), g.a());
        }
        throw new IllegalArgumentException("Invalid point compression");
    }
}
