package org.spongycastle.crypto.ec;

import java.math.BigInteger;
import java.util.Enumeration;
import java.util.Hashtable;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.sec.SECObjectIdentifiers;
import org.spongycastle.asn1.x9.X9ECParameters;
import org.spongycastle.asn1.x9.X9ECParametersHolder;
import org.spongycastle.math.ec.ECCurve;
import org.spongycastle.math.ec.custom.djb.Curve25519;
import org.spongycastle.math.ec.custom.sec.SecP192K1Curve;
import org.spongycastle.math.ec.custom.sec.SecP192R1Curve;
import org.spongycastle.math.ec.custom.sec.SecP224K1Curve;
import org.spongycastle.math.ec.custom.sec.SecP224R1Curve;
import org.spongycastle.math.ec.custom.sec.SecP256K1Curve;
import org.spongycastle.math.ec.custom.sec.SecP256R1Curve;
import org.spongycastle.math.ec.custom.sec.SecP384R1Curve;
import org.spongycastle.math.ec.custom.sec.SecP521R1Curve;
import org.spongycastle.math.ec.endo.GLVTypeBEndomorphism;
import org.spongycastle.math.ec.endo.GLVTypeBParameters;
import org.spongycastle.util.Strings;
import org.spongycastle.util.encoders.Hex;
import tv.periscope.android.api.ApiRunnable;

/* compiled from: Twttr */
public class CustomNamedCurves {
    static X9ECParametersHolder a;
    static X9ECParametersHolder b;
    static X9ECParametersHolder c;
    static X9ECParametersHolder d;
    static X9ECParametersHolder e;
    static X9ECParametersHolder f;
    static X9ECParametersHolder g;
    static X9ECParametersHolder h;
    static X9ECParametersHolder i;
    static final Hashtable j;
    static final Hashtable k;
    static final Hashtable l;
    static final Hashtable m;

    private static ECCurve b(ECCurve eCCurve) {
        return eCCurve;
    }

    private static ECCurve b(ECCurve eCCurve, GLVTypeBParameters gLVTypeBParameters) {
        return eCCurve.b().a(new GLVTypeBEndomorphism(eCCurve, gLVTypeBParameters)).a();
    }

    static {
        a = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                ECCurve a = CustomNamedCurves.b(new Curve25519());
                return new X9ECParameters(a, a.a(Hex.a("042AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD245A20AE19A1B8A086B4E01EDD2C7748D14C923D4D7E6D7C61B229E9C5A27ECED3D9")), a.i(), a.j(), null);
            }
        };
        b = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                ECCurve a = CustomNamedCurves.b(new SecP192K1Curve(), new GLVTypeBParameters(new BigInteger("bb85691939b869c1d087f601554b96b80cb4f55b35f433c2", 16), new BigInteger("3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1", 16), new BigInteger[]{new BigInteger("71169be7330b3038edb025f1", 16), new BigInteger("-b3fb3400dec5c4adceb8655c", 16)}, new BigInteger[]{new BigInteger("12511cfe811d0f4e6bc688b4d", 16), new BigInteger("71169be7330b3038edb025f1", 16)}, new BigInteger("71169be7330b3038edb025f1d0f9", 16), new BigInteger("b3fb3400dec5c4adceb8655d4c94", 16), ApiRunnable.ACTION_CODE_PUBLIC_BLOCK));
                return new X9ECParameters(a, a.a(Hex.a("04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D")), a.i(), a.j(), null);
            }
        };
        c = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                byte[] a = Hex.a("3045AE6FC8422F64ED579528D38120EAE12196D5");
                ECCurve a2 = CustomNamedCurves.b(new SecP192R1Curve());
                return new X9ECParameters(a2, a2.a(Hex.a("04188DA80EB03090F67CBF20EB43A18800F4FF0AFD82FF101207192B95FFC8DA78631011ED6B24CDD573F977A11E794811")), a2.i(), a2.j(), a);
            }
        };
        d = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                ECCurve a = CustomNamedCurves.b(new SecP224K1Curve(), new GLVTypeBParameters(new BigInteger("fe0e87005b4e83761908c5131d552a850b3f58b749c37cf5b84d6768", 16), new BigInteger("60dcd2104c4cbc0be6eeefc2bdd610739ec34e317f9b33046c9e4788", 16), new BigInteger[]{new BigInteger("6b8cf07d4ca75c88957d9d670591", 16), new BigInteger("-b8adf1378a6eb73409fa6c9c637d", 16)}, new BigInteger[]{new BigInteger("1243ae1b4d71613bc9f780a03690e", 16), new BigInteger("6b8cf07d4ca75c88957d9d670591", 16)}, new BigInteger("6b8cf07d4ca75c88957d9d67059037a4", 16), new BigInteger("b8adf1378a6eb73409fa6c9c637ba7f5", 16), 240));
                return new X9ECParameters(a, a.a(Hex.a("04A1455B334DF099DF30FC28A169A467E9E47075A90F7E650EB6B7A45C7E089FED7FBA344282CAFBD6F7E319F7C0B0BD59E2CA4BDB556D61A5")), a.i(), a.j(), null);
            }
        };
        e = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                byte[] a = Hex.a("BD71344799D5C7FCDC45B59FA3B9AB8F6A948BC5");
                ECCurve a2 = CustomNamedCurves.b(new SecP224R1Curve());
                return new X9ECParameters(a2, a2.a(Hex.a("04B70E0CBD6BB4BF7F321390B94A03C1D356C21122343280D6115C1D21BD376388B5F723FB4C22DFE6CD4375A05A07476444D5819985007E34")), a2.i(), a2.j(), a);
            }
        };
        f = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                ECCurve a = CustomNamedCurves.b(new SecP256K1Curve(), new GLVTypeBParameters(new BigInteger("7ae96a2b657c07106e64479eac3434e99cf0497512f58995c1396c28719501ee", 16), new BigInteger("5363ad4cc05c30e0a5261c028812645a122e22ea20816678df02967c1b23bd72", 16), new BigInteger[]{new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16), new BigInteger("-e4437ed6010e88286f547fa90abfe4c3", 16)}, new BigInteger[]{new BigInteger("114ca50f7a8e2f3f657c1108d9d44cfd8", 16), new BigInteger("3086d221a7d46bcde86c90e49284eb15", 16)}, new BigInteger("3086d221a7d46bcde86c90e49284eb153dab", 16), new BigInteger("e4437ed6010e88286f547fa90abfe4c42212", 16), 272));
                return new X9ECParameters(a, a.a(Hex.a("0479BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8")), a.i(), a.j(), null);
            }
        };
        g = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                byte[] a = Hex.a("C49D360886E704936A6678E1139D26B7819F7E90");
                ECCurve a2 = CustomNamedCurves.b(new SecP256R1Curve());
                return new X9ECParameters(a2, a2.a(Hex.a("046B17D1F2E12C4247F8BCE6E563A440F277037D812DEB33A0F4A13945D898C2964FE342E2FE1A7F9B8EE7EB4A7C0F9E162BCE33576B315ECECBB6406837BF51F5")), a2.i(), a2.j(), a);
            }
        };
        h = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                byte[] a = Hex.a("A335926AA319A27A1D00896A6773A4827ACDAC73");
                ECCurve a2 = CustomNamedCurves.b(new SecP384R1Curve());
                return new X9ECParameters(a2, a2.a(Hex.a("04AA87CA22BE8B05378EB1C71EF320AD746E1D3B628BA79B9859F741E082542A385502F25DBF55296C3A545E3872760AB73617DE4A96262C6F5D9E98BF9292DC29F8F41DBD289A147CE9DA3113B5F0B8C00A60B1CE1D7E819D7A431D7C90EA0E5F")), a2.i(), a2.j(), a);
            }
        };
        i = new X9ECParametersHolder() {
            protected X9ECParameters a() {
                byte[] a = Hex.a("D09E8800291CB85396CC6717393284AAA0DA64BA");
                ECCurve a2 = CustomNamedCurves.b(new SecP521R1Curve());
                return new X9ECParameters(a2, a2.a(Hex.a("0400C6858E06B70404E9CD9E3ECB662395B4429C648139053FB521F828AF606B4D3DBAA14B5E77EFE75928FE1DC127A2FFA8DE3348B3C1856A429BF97E7E31C2E5BD66011839296A789A3BC0045C8A5FB42C7D1BD998F54449579B446817AFBD17273E662C97EE72995EF42640C550B9013FAD0761353C7086A272C24088BE94769FD16650")), a2.i(), a2.j(), a);
            }
        };
        j = new Hashtable();
        k = new Hashtable();
        l = new Hashtable();
        m = new Hashtable();
        a("curve25519", a);
        a("secp192k1", SECObjectIdentifiers.x, b);
        a("secp192r1", SECObjectIdentifiers.G, c);
        a("secp224k1", SECObjectIdentifiers.y, d);
        a("secp224r1", SECObjectIdentifiers.z, e);
        a("secp256k1", SECObjectIdentifiers.k, f);
        a("secp256r1", SECObjectIdentifiers.H, g);
        a("secp384r1", SECObjectIdentifiers.A, h);
        a("secp521r1", SECObjectIdentifiers.B, i);
        a("P-192", SECObjectIdentifiers.G);
        a("P-224", SECObjectIdentifiers.z);
        a("P-256", SECObjectIdentifiers.H);
        a("P-384", SECObjectIdentifiers.A);
        a("P-521", SECObjectIdentifiers.B);
    }

    static void a(String str, X9ECParametersHolder x9ECParametersHolder) {
        j.put(str, x9ECParametersHolder);
    }

    static void a(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier, X9ECParametersHolder x9ECParametersHolder) {
        j.put(str, x9ECParametersHolder);
        k.put(str, aSN1ObjectIdentifier);
        m.put(aSN1ObjectIdentifier, str);
        l.put(aSN1ObjectIdentifier, x9ECParametersHolder);
    }

    static void a(String str, ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        String c = Strings.c(str);
        k.put(c, aSN1ObjectIdentifier);
        j.put(c, l.get(aSN1ObjectIdentifier));
    }

    public static X9ECParameters a(String str) {
        X9ECParametersHolder x9ECParametersHolder = (X9ECParametersHolder) j.get(Strings.c(str));
        return x9ECParametersHolder == null ? null : x9ECParametersHolder.b();
    }

    public static X9ECParameters a(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        X9ECParametersHolder x9ECParametersHolder = (X9ECParametersHolder) l.get(aSN1ObjectIdentifier);
        return x9ECParametersHolder == null ? null : x9ECParametersHolder.b();
    }

    public static Enumeration a() {
        return j.keys();
    }
}
