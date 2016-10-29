package org.spongycastle.math.ec;

import java.math.BigInteger;
import org.spongycastle.math.ec.ECPoint.F2m;

/* compiled from: Twttr */
public class WTauNafMultiplier extends AbstractECMultiplier {
    protected ECPoint b(ECPoint eCPoint, BigInteger bigInteger) {
        if (eCPoint instanceof F2m) {
            F2m f2m = (F2m) eCPoint;
            ECCurve.F2m f2m2 = (ECCurve.F2m) f2m.d();
            int q = f2m2.q();
            byte byteValue = f2m2.g().a().byteValue();
            byte o = f2m2.o();
            return a(f2m, Tnaf.a(bigInteger, q, byteValue, f2m2.p(), o, (byte) 10), f2m2.a((ECPoint) f2m, "bc_wtnaf"), byteValue, o);
        }
        throw new IllegalArgumentException("Only ECPoint.F2m can be used in WTauNafMultiplier");
    }

    private F2m a(F2m f2m, ZTauElement zTauElement, PreCompInfo preCompInfo, byte b, byte b2) {
        return a(f2m, Tnaf.a(b2, zTauElement, (byte) 4, BigInteger.valueOf(16), Tnaf.a(b2, 4), b == null ? Tnaf.a : Tnaf.c), preCompInfo);
    }

    private static F2m a(F2m f2m, byte[] bArr, PreCompInfo preCompInfo) {
        F2m[] a;
        ECCurve.F2m f2m2 = (ECCurve.F2m) f2m.d();
        byte byteValue = f2m2.g().a().byteValue();
        if (preCompInfo == null || !(preCompInfo instanceof WTauNafPreCompInfo)) {
            a = Tnaf.a(f2m, byteValue);
            PreCompInfo wTauNafPreCompInfo = new WTauNafPreCompInfo();
            wTauNafPreCompInfo.a(a);
            f2m2.a((ECPoint) f2m, "bc_wtnaf", wTauNafPreCompInfo);
        } else {
            a = ((WTauNafPreCompInfo) preCompInfo).a();
        }
        F2m f2m3 = (F2m) f2m.d().e();
        for (int length = bArr.length - 1; length >= 0; length--) {
            f2m3 = Tnaf.a(f2m3);
            byte b = bArr[length];
            if (b != null) {
                if (b > null) {
                    f2m3 = f2m3.a(a[b]);
                } else {
                    f2m3 = f2m3.b(a[-b]);
                }
            }
        }
        return f2m3;
    }
}
