package org.spongycastle.jcajce.provider.asymmetric.util;

import java.math.BigInteger;
import java.security.spec.ECField;
import java.security.spec.ECFieldF2m;
import java.security.spec.ECFieldFp;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.x9.ECNamedCurveTable;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.crypto.ec.CustomNamedCurves;
import org.spongycastle.jce.spec.ECNamedCurveParameterSpec;
import org.spongycastle.jce.spec.ECNamedCurveSpec;
import org.spongycastle.math.ec.ECAlgorithms;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.ECCurve.F2m;
import org.spongycastle.math.ec.ECCurve.Fp;

/* compiled from: Twttr */
public class EC5Util {
    private static Map a;

    static {
        a = new HashMap();
        Enumeration a = CustomNamedCurves.a();
        while (a.hasMoreElements()) {
            String str = (String) a.nextElement();
            X9ECParameters a2 = ECNamedCurveTable.a(str);
            if (a2 != null) {
                a.put(a2.a(), CustomNamedCurves.a(str).a());
            }
        }
    }

    public static EllipticCurve a(ECCurve eCCurve, byte[] bArr) {
        if (ECAlgorithms.b(eCCurve)) {
            return new EllipticCurve(new ECFieldFp(eCCurve.f().a()), eCCurve.g().a(), eCCurve.h().a(), null);
        }
        F2m f2m = (F2m) eCCurve;
        if (f2m.r()) {
            return new EllipticCurve(new ECFieldF2m(f2m.q(), new int[]{f2m.s()}), eCCurve.g().a(), eCCurve.h().a(), null);
        }
        return new EllipticCurve(new ECFieldF2m(f2m.q(), new int[]{f2m.u(), f2m.t(), f2m.s()}), eCCurve.g().a(), eCCurve.h().a(), null);
    }

    public static ECCurve a(EllipticCurve ellipticCurve) {
        ECField field = ellipticCurve.getField();
        BigInteger a = ellipticCurve.getA();
        BigInteger b = ellipticCurve.getB();
        if (field instanceof ECFieldFp) {
            ECCurve fp = new Fp(((ECFieldFp) field).getP(), a, b);
            if (a.containsKey(fp)) {
                return (ECCurve) a.get(fp);
            }
            return fp;
        }
        ECFieldF2m eCFieldF2m = (ECFieldF2m) field;
        int m = eCFieldF2m.getM();
        int[] a2 = ECUtil.a(eCFieldF2m.getMidTermsOfReductionPolynomial());
        return new F2m(m, a2[0], a2[1], a2[2], a, b);
    }

    public static ECParameterSpec a(EllipticCurve ellipticCurve, org.spongycastle.jce.spec.ECParameterSpec eCParameterSpec) {
        if (!(eCParameterSpec instanceof ECNamedCurveParameterSpec)) {
            return new ECParameterSpec(ellipticCurve, new ECPoint(eCParameterSpec.c().g().a(), eCParameterSpec.c().h().a()), eCParameterSpec.d(), eCParameterSpec.e().intValue());
        }
        return new ECNamedCurveSpec(((ECNamedCurveParameterSpec) eCParameterSpec).a(), ellipticCurve, new ECPoint(eCParameterSpec.c().g().a(), eCParameterSpec.c().h().a()), eCParameterSpec.d(), eCParameterSpec.e());
    }

    public static org.spongycastle.jce.spec.ECParameterSpec a(ECParameterSpec eCParameterSpec, boolean z) {
        ECCurve a = a(eCParameterSpec.getCurve());
        return new org.spongycastle.jce.spec.ECParameterSpec(a, a(a, eCParameterSpec.getGenerator(), z), eCParameterSpec.getOrder(), BigInteger.valueOf((long) eCParameterSpec.getCofactor()), eCParameterSpec.getCurve().getSeed());
    }

    public static org.spongycastle.math.ec.ECPoint a(ECParameterSpec eCParameterSpec, ECPoint eCPoint, boolean z) {
        return a(a(eCParameterSpec.getCurve()), eCPoint, z);
    }

    public static org.spongycastle.math.ec.ECPoint a(ECCurve eCCurve, ECPoint eCPoint, boolean z) {
        return eCCurve.b(eCPoint.getAffineX(), eCPoint.getAffineY(), z);
    }
}
