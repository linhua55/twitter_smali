package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Hashtable;
import java.util.Random;
import org.spongycastle.math.ec.endo.ECEndomorphism;
import org.spongycastle.math.ec.endo.GLVEndomorphism;
import org.spongycastle.math.field.FiniteField;
import org.spongycastle.math.field.FiniteFields;
import org.spongycastle.util.BigIntegers;
import org.spongycastle.util.Integers;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class ECCurve {
    protected FiniteField a;
    protected ECFieldElement b;
    protected ECFieldElement c;
    protected BigInteger d;
    protected BigInteger e;
    protected int f;
    protected ECEndomorphism g;
    protected ECMultiplier h;

    /* compiled from: Twttr */
    public abstract class AbstractF2m extends ECCurve {
        private static FiniteField a(int i, int i2, int i3, int i4) {
            if (i2 == 0) {
                throw new IllegalArgumentException("k1 must be > 0");
            } else if (i3 == 0) {
                if (i4 != 0) {
                    throw new IllegalArgumentException("k3 must be 0 if k2 == 0");
                }
                return FiniteFields.a(new int[]{0, i2, i});
            } else if (i3 <= i2) {
                throw new IllegalArgumentException("k2 must be > k1");
            } else if (i4 <= i3) {
                throw new IllegalArgumentException("k3 must be > k2");
            } else {
                return FiniteFields.a(new int[]{0, i2, i3, i4, i});
            }
        }

        protected AbstractF2m(int i, int i2, int i3, int i4) {
            super(a(i, i2, i3, i4));
        }
    }

    /* compiled from: Twttr */
    public abstract class AbstractFp extends ECCurve {
        protected AbstractFp(BigInteger bigInteger) {
            super(FiniteFields.a(bigInteger));
        }

        protected ECPoint a(int i, BigInteger bigInteger) {
            ECFieldElement a = a(bigInteger);
            ECFieldElement g = a.e().a(this.b).c(a).a(this.c).g();
            if (g == null) {
                throw new IllegalArgumentException("Invalid point compression");
            }
            if (g.k() != (i == 1)) {
                g = g.d();
            }
            return a(a, g, true);
        }
    }

    /* compiled from: Twttr */
    public class Config {
        protected int a;
        protected ECEndomorphism b;
        protected ECMultiplier c;
        final /* synthetic */ ECCurve d;

        Config(ECCurve eCCurve, int i, ECEndomorphism eCEndomorphism, ECMultiplier eCMultiplier) {
            this.d = eCCurve;
            this.a = i;
            this.b = eCEndomorphism;
            this.c = eCMultiplier;
        }

        public Config a(int i) {
            this.a = i;
            return this;
        }

        public Config a(ECEndomorphism eCEndomorphism) {
            this.b = eCEndomorphism;
            return this;
        }

        public ECCurve a() {
            if (this.d.a(this.a)) {
                ECCurve c = this.d.c();
                if (c == this.d) {
                    throw new IllegalStateException("implementation returned current curve");
                }
                c.f = this.a;
                c.g = this.b;
                c.h = this.c;
                return c;
            }
            throw new IllegalStateException("unsupported coordinate system");
        }
    }

    /* compiled from: Twttr */
    public class F2m extends AbstractF2m {
        private int i;
        private int j;
        private int k;
        private int l;
        private org.spongycastle.math.ec.ECPoint.F2m m;
        private byte n;
        private BigInteger[] o;

        public F2m(int i, int i2, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            this(i, i2, 0, 0, bigInteger, bigInteger2, bigInteger3, bigInteger4);
        }

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2) {
            this(i, i2, i3, i4, bigInteger, bigInteger2, null, null);
        }

        public F2m(int i, int i2, int i3, int i4, BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(i, i2, i3, i4);
            this.n = (byte) 0;
            this.o = null;
            this.i = i;
            this.j = i2;
            this.k = i3;
            this.l = i4;
            this.d = bigInteger3;
            this.e = bigInteger4;
            this.m = new org.spongycastle.math.ec.ECPoint.F2m(this, null, null);
            this.b = a(bigInteger);
            this.c = a(bigInteger2);
            this.f = 6;
        }

        protected F2m(int i, int i2, int i3, int i4, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger, BigInteger bigInteger2) {
            super(i, i2, i3, i4);
            this.n = (byte) 0;
            this.o = null;
            this.i = i;
            this.j = i2;
            this.k = i3;
            this.l = i4;
            this.d = bigInteger;
            this.e = bigInteger2;
            this.m = new org.spongycastle.math.ec.ECPoint.F2m(this, null, null);
            this.b = eCFieldElement;
            this.c = eCFieldElement2;
            this.f = 6;
        }

        protected ECCurve c() {
            return new F2m(this.i, this.j, this.k, this.l, this.b, this.c, this.d, this.e);
        }

        public boolean a(int i) {
            switch (i) {
                case p.View_android_theme /*0*/:
                case p.View_android_focusable /*1*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    return true;
                default:
                    return false;
            }
        }

        protected ECMultiplier d() {
            if (n()) {
                return new WTauNafMultiplier();
            }
            return super.d();
        }

        public int a() {
            return this.i;
        }

        public ECFieldElement a(BigInteger bigInteger) {
            return new org.spongycastle.math.ec.ECFieldElement.F2m(this.i, this.j, this.k, this.l, bigInteger);
        }

        public ECPoint b(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
            ECFieldElement a = a(bigInteger);
            ECFieldElement a2 = a(bigInteger2);
            switch (k()) {
                case p.Toolbar_contentInsetStart /*5*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    if (!a.j()) {
                        a2 = a2.d(a).a(a);
                        break;
                    } else if (!a2.e().equals(h())) {
                        throw new IllegalArgumentException();
                    }
                    break;
            }
            return a(a, a2, z);
        }

        protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new org.spongycastle.math.ec.ECPoint.F2m(this, eCFieldElement, eCFieldElement2, z);
        }

        protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            return new org.spongycastle.math.ec.ECPoint.F2m(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
        }

        public ECPoint e() {
            return this.m;
        }

        public boolean n() {
            return this.d != null && this.e != null && this.c.i() && (this.b.j() || this.b.i());
        }

        synchronized byte o() {
            if (this.n == null) {
                this.n = Tnaf.a(this);
            }
            return this.n;
        }

        synchronized BigInteger[] p() {
            if (this.o == null) {
                this.o = Tnaf.b(this);
            }
            return this.o;
        }

        protected ECPoint a(int i, BigInteger bigInteger) {
            ECFieldElement g;
            ECFieldElement a = a(bigInteger);
            if (a.j()) {
                g = this.c.g();
            } else {
                g = a(a.e().f().c(this.c).a(this.b).a(a));
                if (g != null) {
                    if (g.k() != (i == 1)) {
                        g = g.c();
                    }
                    switch (k()) {
                        case p.Toolbar_contentInsetStart /*5*/:
                        case p.Toolbar_contentInsetEnd /*6*/:
                            g = g.a(a);
                            break;
                        default:
                            g = g.c(a);
                            break;
                    }
                }
                g = null;
            }
            if (g != null) {
                return a(a, g, true);
            }
            throw new IllegalArgumentException("Invalid point compression");
        }

        private ECFieldElement a(ECFieldElement eCFieldElement) {
            if (eCFieldElement.j()) {
                return eCFieldElement;
            }
            ECFieldElement eCFieldElement2;
            ECFieldElement a = a(ECConstants.c);
            Random random = new Random();
            do {
                ECFieldElement a2 = a(new BigInteger(this.i, random));
                ECFieldElement eCFieldElement3 = eCFieldElement;
                eCFieldElement2 = a;
                for (int i = 1; i <= this.i - 1; i++) {
                    eCFieldElement3 = eCFieldElement3.e();
                    eCFieldElement2 = eCFieldElement2.e().a(eCFieldElement3.c(a2));
                    eCFieldElement3 = eCFieldElement3.a(eCFieldElement);
                }
                if (!eCFieldElement3.j()) {
                    return null;
                }
            } while (eCFieldElement2.e().a(eCFieldElement2).j());
            return eCFieldElement2;
        }

        public int q() {
            return this.i;
        }

        public boolean r() {
            return this.k == 0 && this.l == 0;
        }

        public int s() {
            return this.j;
        }

        public int t() {
            return this.k;
        }

        public int u() {
            return this.l;
        }
    }

    /* compiled from: Twttr */
    public class Fp extends AbstractFp {
        BigInteger i;
        BigInteger j;
        org.spongycastle.math.ec.ECPoint.Fp k;

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            this(bigInteger, bigInteger2, bigInteger3, null, null);
        }

        public Fp(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4, BigInteger bigInteger5) {
            super(bigInteger);
            this.i = bigInteger;
            this.j = org.spongycastle.math.ec.ECFieldElement.Fp.a(bigInteger);
            this.k = new org.spongycastle.math.ec.ECPoint.Fp(this, null, null);
            this.b = a(bigInteger2);
            this.c = a(bigInteger3);
            this.d = bigInteger4;
            this.e = bigInteger5;
            this.f = 4;
        }

        protected Fp(BigInteger bigInteger, BigInteger bigInteger2, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, BigInteger bigInteger3, BigInteger bigInteger4) {
            super(bigInteger);
            this.i = bigInteger;
            this.j = bigInteger2;
            this.k = new org.spongycastle.math.ec.ECPoint.Fp(this, null, null);
            this.b = eCFieldElement;
            this.c = eCFieldElement2;
            this.d = bigInteger3;
            this.e = bigInteger4;
            this.f = 4;
        }

        protected ECCurve c() {
            return new Fp(this.i, this.j, this.b, this.c, this.d, this.e);
        }

        public boolean a(int i) {
            switch (i) {
                case p.View_android_theme /*0*/:
                case p.View_android_focusable /*1*/:
                case p.View_paddingStart /*2*/:
                case p.View_theme /*4*/:
                    return true;
                default:
                    return false;
            }
        }

        public int a() {
            return this.i.bitLength();
        }

        public ECFieldElement a(BigInteger bigInteger) {
            return new org.spongycastle.math.ec.ECFieldElement.Fp(this.i, this.j, bigInteger);
        }

        protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            return new org.spongycastle.math.ec.ECPoint.Fp(this, eCFieldElement, eCFieldElement2, z);
        }

        protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            return new org.spongycastle.math.ec.ECPoint.Fp(this, eCFieldElement, eCFieldElement2, eCFieldElementArr, z);
        }

        public ECPoint a(ECPoint eCPoint) {
            if (!(this == eCPoint.d() || k() != 2 || eCPoint.q())) {
                switch (eCPoint.d().k()) {
                    case p.View_paddingStart /*2*/:
                    case p.View_paddingEnd /*3*/:
                    case p.View_theme /*4*/:
                        return new org.spongycastle.math.ec.ECPoint.Fp(this, a(eCPoint.c.a()), a(eCPoint.d.a()), new ECFieldElement[]{a(eCPoint.e[0].a())}, eCPoint.f);
                }
            }
            return super.a(eCPoint);
        }

        public ECPoint e() {
            return this.k;
        }
    }

    public abstract int a();

    public abstract ECFieldElement a(BigInteger bigInteger);

    protected abstract ECPoint a(int i, BigInteger bigInteger);

    protected abstract ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z);

    protected abstract ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z);

    protected abstract ECCurve c();

    public abstract ECPoint e();

    protected ECCurve(FiniteField finiteField) {
        this.f = 0;
        this.g = null;
        this.h = null;
        this.a = finiteField;
    }

    public Config b() {
        return new Config(this, this.f, this.g, this.h);
    }

    public ECPoint a(BigInteger bigInteger, BigInteger bigInteger2) {
        ECPoint b = b(bigInteger, bigInteger2);
        if (b.r()) {
            return b;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    public ECPoint a(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        ECPoint b = b(bigInteger, bigInteger2, z);
        if (b.r()) {
            return b;
        }
        throw new IllegalArgumentException("Invalid point coordinates");
    }

    public ECPoint b(BigInteger bigInteger, BigInteger bigInteger2) {
        return b(bigInteger, bigInteger2, false);
    }

    public ECPoint b(BigInteger bigInteger, BigInteger bigInteger2, boolean z) {
        return a(a(bigInteger), a(bigInteger2), z);
    }

    protected ECMultiplier d() {
        if (this.g instanceof GLVEndomorphism) {
            return new GLVMultiplier(this, (GLVEndomorphism) this.g);
        }
        return new WNafL2RMultiplier();
    }

    public boolean a(int i) {
        return i == 0;
    }

    public PreCompInfo a(ECPoint eCPoint, String str) {
        PreCompInfo preCompInfo;
        b(eCPoint);
        synchronized (eCPoint) {
            Hashtable hashtable = eCPoint.g;
            preCompInfo = hashtable == null ? null : (PreCompInfo) hashtable.get(str);
        }
        return preCompInfo;
    }

    public void a(ECPoint eCPoint, String str, PreCompInfo preCompInfo) {
        b(eCPoint);
        synchronized (eCPoint) {
            Hashtable hashtable = eCPoint.g;
            if (hashtable == null) {
                hashtable = new Hashtable(4);
                eCPoint.g = hashtable;
            }
            hashtable.put(str, preCompInfo);
        }
    }

    public ECPoint a(ECPoint eCPoint) {
        if (this == eCPoint.d()) {
            return eCPoint;
        }
        if (eCPoint.q()) {
            return e();
        }
        ECPoint p = eCPoint.p();
        return a(p.i().a(), p.j().a(), p.f);
    }

    public void a(ECPoint[] eCPointArr) {
        int i = 0;
        b(eCPointArr);
        if (k() != 0) {
            int i2;
            ECFieldElement[] eCFieldElementArr = new ECFieldElement[eCPointArr.length];
            int[] iArr = new int[eCPointArr.length];
            int i3 = 0;
            for (i2 = 0; i2 < eCPointArr.length; i2++) {
                ECPoint eCPoint = eCPointArr[i2];
                if (!(eCPoint == null || eCPoint.o())) {
                    eCFieldElementArr[i3] = eCPoint.a(0);
                    int i4 = i3 + 1;
                    iArr[i3] = i2;
                    i3 = i4;
                }
            }
            if (i3 != 0) {
                ECAlgorithms.a(eCFieldElementArr, 0, i3);
                while (i < i3) {
                    i2 = iArr[i];
                    eCPointArr[i2] = eCPointArr[i2].a(eCFieldElementArr[i]);
                    i++;
                }
            }
        }
    }

    public FiniteField f() {
        return this.a;
    }

    public ECFieldElement g() {
        return this.b;
    }

    public ECFieldElement h() {
        return this.c;
    }

    public BigInteger i() {
        return this.d;
    }

    public BigInteger j() {
        return this.e;
    }

    public int k() {
        return this.f;
    }

    public ECEndomorphism l() {
        return this.g;
    }

    public synchronized ECMultiplier m() {
        if (this.h == null) {
            this.h = d();
        }
        return this.h;
    }

    public ECPoint a(byte[] bArr) {
        ECPoint e;
        boolean z = true;
        int a = (a() + 7) / 8;
        byte b = bArr[0];
        switch (b) {
            case p.View_android_theme /*0*/:
                if (bArr.length == 1) {
                    e = e();
                    break;
                }
                throw new IllegalArgumentException("Incorrect length for infinity encoding");
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
                if (bArr.length != a + 1) {
                    throw new IllegalArgumentException("Incorrect length for compressed encoding");
                }
                e = a(b & 1, BigIntegers.a(bArr, 1, a));
                if (!e.a()) {
                    throw new IllegalArgumentException("Invalid point");
                }
                break;
            case p.View_theme /*4*/:
                if (bArr.length == (a * 2) + 1) {
                    e = a(BigIntegers.a(bArr, 1, a), BigIntegers.a(bArr, a + 1, a));
                    break;
                }
                throw new IllegalArgumentException("Incorrect length for uncompressed encoding");
            case p.Toolbar_contentInsetEnd /*6*/:
            case p.Toolbar_contentInsetLeft /*7*/:
                if (bArr.length == (a * 2) + 1) {
                    BigInteger a2 = BigIntegers.a(bArr, 1, a);
                    BigInteger a3 = BigIntegers.a(bArr, a + 1, a);
                    boolean testBit = a3.testBit(0);
                    if (b != 7) {
                        z = false;
                    }
                    if (testBit == z) {
                        e = a(a2, a3);
                        break;
                    }
                    throw new IllegalArgumentException("Inconsistent Y coordinate in hybrid encoding");
                }
                throw new IllegalArgumentException("Incorrect length for hybrid encoding");
            default:
                throw new IllegalArgumentException("Invalid point encoding 0x" + Integer.toString(b, 16));
        }
        if (b == null || !e.q()) {
            return e;
        }
        throw new IllegalArgumentException("Invalid infinity encoding");
    }

    protected void b(ECPoint eCPoint) {
        if (eCPoint == null || this != eCPoint.d()) {
            throw new IllegalArgumentException("'point' must be non-null and on this curve");
        }
    }

    protected void b(ECPoint[] eCPointArr) {
        if (eCPointArr == null) {
            throw new IllegalArgumentException("'points' cannot be null");
        }
        int i = 0;
        while (i < eCPointArr.length) {
            ECPoint eCPoint = eCPointArr[i];
            if (eCPoint == null || this == eCPoint.d()) {
                i++;
            } else {
                throw new IllegalArgumentException("'points' entries must be null or on this curve");
            }
        }
    }

    public boolean a(ECCurve eCCurve) {
        return this == eCCurve || (eCCurve != null && f().equals(eCCurve.f()) && g().a().equals(eCCurve.g().a()) && h().a().equals(eCCurve.h().a()));
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof ECCurve) && a((ECCurve) obj));
    }

    public int hashCode() {
        return (f().hashCode() ^ Integers.a(g().a().hashCode(), 8)) ^ Integers.a(h().a().hashCode(), 16);
    }
}
