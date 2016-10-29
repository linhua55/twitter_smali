package org.spongycastle.math.ec;

import java.math.BigInteger;
import java.util.Hashtable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
public abstract class ECPoint {
    protected static ECFieldElement[] a;
    protected ECCurve b;
    protected ECFieldElement c;
    protected ECFieldElement d;
    protected ECFieldElement[] e;
    protected boolean f;
    protected Hashtable g;

    /* compiled from: Twttr */
    public abstract class AbstractF2m extends ECPoint {
        protected AbstractF2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
        }

        protected AbstractF2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        protected boolean b() {
            ECCurve d = d();
            ECFieldElement eCFieldElement = this.c;
            ECFieldElement g = d.g();
            ECFieldElement h = d.h();
            int k = d.k();
            ECFieldElement eCFieldElement2;
            Object c;
            ECFieldElement eCFieldElement3;
            if (k == 6) {
                eCFieldElement2 = this.e[0];
                boolean i = eCFieldElement2.i();
                if (eCFieldElement.j()) {
                    g = this.d.e();
                    if (!i) {
                        c = h.c(eCFieldElement2.e());
                    }
                    return g.equals(c);
                }
                eCFieldElement3 = this.d;
                eCFieldElement = eCFieldElement.e();
                if (i) {
                    eCFieldElement2 = eCFieldElement3.e().a(eCFieldElement3).a(g);
                    c = eCFieldElement.e().a(h);
                } else {
                    ECFieldElement e = eCFieldElement2.e();
                    ECFieldElement e2 = e.e();
                    eCFieldElement2 = eCFieldElement3.a(eCFieldElement2).b(eCFieldElement3, g, e);
                    c = eCFieldElement.a(h, e2);
                }
                return eCFieldElement2.c(eCFieldElement).equals(c);
            }
            eCFieldElement2 = this.d;
            eCFieldElement2 = eCFieldElement2.a(eCFieldElement).c(eCFieldElement2);
            ECFieldElement eCFieldElement4;
            switch (k) {
                case p.View_android_theme /*0*/:
                    eCFieldElement4 = eCFieldElement2;
                    eCFieldElement2 = h;
                    c = eCFieldElement4;
                    break;
                case p.View_android_focusable /*1*/:
                    e = this.e[0];
                    if (!e.i()) {
                        eCFieldElement3 = e.c(e.e());
                        eCFieldElement2 = eCFieldElement2.c(e);
                        g = g.c(e);
                        eCFieldElement4 = eCFieldElement2;
                        eCFieldElement2 = h.c(eCFieldElement3);
                        h = eCFieldElement4;
                        break;
                    }
                    eCFieldElement4 = eCFieldElement2;
                    eCFieldElement2 = h;
                    h = eCFieldElement4;
                    break;
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
            return c.equals(eCFieldElement.a(g).c(eCFieldElement.e()).a(eCFieldElement2));
        }
    }

    /* compiled from: Twttr */
    public abstract class AbstractFp extends ECPoint {
        protected AbstractFp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            super(eCCurve, eCFieldElement, eCFieldElement2);
        }

        protected AbstractFp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
        }

        protected boolean t() {
            return h().k();
        }

        protected boolean b() {
            ECFieldElement eCFieldElement = this.c;
            ECFieldElement eCFieldElement2 = this.d;
            ECFieldElement g = this.b.g();
            ECFieldElement h = this.b.h();
            Object e = eCFieldElement2.e();
            ECFieldElement eCFieldElement3;
            ECFieldElement e2;
            switch (f()) {
                case p.View_android_theme /*0*/:
                    break;
                case p.View_android_focusable /*1*/:
                    eCFieldElement3 = this.e[0];
                    if (!eCFieldElement3.i()) {
                        e2 = eCFieldElement3.e();
                        ECFieldElement c = eCFieldElement3.c(e2);
                        e = e.c(eCFieldElement3);
                        g = g.c(e2);
                        h = h.c(c);
                        break;
                    }
                    break;
                case p.View_paddingStart /*2*/:
                case p.View_paddingEnd /*3*/:
                case p.View_theme /*4*/:
                    eCFieldElement3 = this.e[0];
                    if (!eCFieldElement3.i()) {
                        eCFieldElement3 = eCFieldElement3.e();
                        e2 = eCFieldElement3.e();
                        eCFieldElement3 = eCFieldElement3.c(e2);
                        g = g.c(e2);
                        h = h.c(eCFieldElement3);
                        break;
                    }
                    break;
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
            return e.equals(eCFieldElement.e().a(g).c(eCFieldElement).a(h));
        }
    }

    /* compiled from: Twttr */
    public class F2m extends AbstractF2m {
        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            Object obj;
            Object obj2 = 1;
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if (eCFieldElement == null) {
                obj = 1;
            } else {
                obj = null;
            }
            if (eCFieldElement2 != null) {
                obj2 = null;
            }
            if (obj != obj2) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            if (eCFieldElement != null) {
                org.spongycastle.math.ec.ECFieldElement.F2m.b(this.c, this.d);
                if (eCCurve != null) {
                    org.spongycastle.math.ec.ECFieldElement.F2m.b(this.c, this.b.g());
                }
            }
            this.f = z;
        }

        F2m(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.f = z;
        }

        protected ECPoint e() {
            return new F2m(null, g(), h());
        }

        public ECFieldElement j() {
            int f = f();
            switch (f) {
                case p.Toolbar_contentInsetStart /*5*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    ECFieldElement eCFieldElement = this.c;
                    ECFieldElement eCFieldElement2 = this.d;
                    if (q() || eCFieldElement.j()) {
                        return eCFieldElement2;
                    }
                    eCFieldElement2 = eCFieldElement2.a(eCFieldElement).c(eCFieldElement);
                    if (6 != f) {
                        return eCFieldElement2;
                    }
                    ECFieldElement eCFieldElement3 = this.e[0];
                    if (eCFieldElement3.i()) {
                        return eCFieldElement2;
                    }
                    return eCFieldElement2.d(eCFieldElement3);
                default:
                    return this.d;
            }
        }

        public ECPoint b(ECFieldElement eCFieldElement) {
            if (q()) {
                return this;
            }
            ECFieldElement k;
            ECFieldElement l;
            switch (f()) {
                case p.Toolbar_contentInsetStart /*5*/:
                    k = k();
                    l = l();
                    return d().a(k, l.a(k).d(eCFieldElement).a(k.c(eCFieldElement)), m(), this.f);
                case p.Toolbar_contentInsetEnd /*6*/:
                    k = k();
                    l = l();
                    ECFieldElement eCFieldElement2 = m()[0];
                    ECFieldElement c = k.c(eCFieldElement.e());
                    k = l.a(k).a(c);
                    l = eCFieldElement2.c(eCFieldElement);
                    return d().a(c, k, new ECFieldElement[]{l}, this.f);
                default:
                    return super.b(eCFieldElement);
            }
        }

        public ECPoint c(ECFieldElement eCFieldElement) {
            if (q()) {
                return this;
            }
            switch (f()) {
                case p.Toolbar_contentInsetStart /*5*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    ECFieldElement k = k();
                    return d().a(k, l().a(k).c(eCFieldElement).a(k), m(), this.f);
                default:
                    return super.c(eCFieldElement);
            }
        }

        protected boolean t() {
            ECFieldElement k = k();
            if (k.j()) {
                return false;
            }
            ECFieldElement l = l();
            switch (f()) {
                case p.Toolbar_contentInsetStart /*5*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    if (l.k() != k.k()) {
                        return true;
                    }
                    return false;
                default:
                    return l.d(k).k();
            }
        }

        private static void a(ECPoint eCPoint, ECPoint eCPoint2) {
            if (eCPoint.b != eCPoint2.b) {
                throw new IllegalArgumentException("Only points on the same curve can be added or subtracted");
            }
        }

        public ECPoint b(ECPoint eCPoint) {
            a(this, eCPoint);
            return a((F2m) eCPoint);
        }

        public F2m a(F2m f2m) {
            if (q()) {
                return f2m;
            }
            if (f2m.q()) {
                return this;
            }
            ECCurve d = d();
            int k = d.k();
            ECFieldElement eCFieldElement = this.c;
            ECFieldElement eCFieldElement2 = f2m.c;
            ECFieldElement eCFieldElement3;
            ECFieldElement eCFieldElement4;
            ECFieldElement a;
            ECFieldElement eCFieldElement5;
            ECFieldElement a2;
            ECFieldElement a3;
            switch (k) {
                case p.View_android_theme /*0*/:
                    eCFieldElement3 = this.d;
                    eCFieldElement4 = f2m.d;
                    a = eCFieldElement.a(eCFieldElement2);
                    eCFieldElement4 = eCFieldElement3.a(eCFieldElement4);
                    if (!a.j()) {
                        eCFieldElement4 = eCFieldElement4.d(a);
                        a = eCFieldElement4.e().a(eCFieldElement4).a(a).a(d.g());
                        return new F2m(d, a, eCFieldElement4.c(eCFieldElement.a(a)).a(a).a(eCFieldElement3), this.f);
                    } else if (eCFieldElement4.j()) {
                        return (F2m) v();
                    } else {
                        return (F2m) d.e();
                    }
                case p.View_android_focusable /*1*/:
                    a = this.d;
                    eCFieldElement4 = this.e[0];
                    eCFieldElement3 = f2m.d;
                    eCFieldElement5 = f2m.e[0];
                    boolean i = eCFieldElement5.i();
                    a2 = eCFieldElement4.c(eCFieldElement3).a(i ? a : a.c(eCFieldElement5));
                    a3 = eCFieldElement4.c(eCFieldElement2).a(i ? eCFieldElement : eCFieldElement.c(eCFieldElement5));
                    if (!a3.j()) {
                        eCFieldElement2 = a3.e();
                        ECFieldElement c = eCFieldElement2.c(a3);
                        eCFieldElement3 = i ? eCFieldElement4 : eCFieldElement4.c(eCFieldElement5);
                        ECFieldElement a4 = a2.a(a3);
                        ECFieldElement a5 = a4.b(a2, eCFieldElement2, d.g()).c(eCFieldElement3).a(c);
                        eCFieldElement4 = a3.c(a5);
                        if (!i) {
                            eCFieldElement2 = eCFieldElement2.c(eCFieldElement5);
                        }
                        return new F2m(d, eCFieldElement4, a2.b(eCFieldElement, a3, a).b(eCFieldElement2, a4, a5), new ECFieldElement[]{c.c(eCFieldElement3)}, this.f);
                    } else if (a2.j()) {
                        return (F2m) v();
                    } else {
                        return (F2m) d.e();
                    }
                case p.Toolbar_contentInsetEnd /*6*/:
                    if (!eCFieldElement.j()) {
                        ECFieldElement eCFieldElement6;
                        eCFieldElement5 = this.d;
                        a2 = this.e[0];
                        eCFieldElement4 = f2m.d;
                        a3 = f2m.e[0];
                        boolean i2 = a2.i();
                        if (i2) {
                            eCFieldElement3 = eCFieldElement4;
                            a = eCFieldElement2;
                        } else {
                            a = eCFieldElement2.c(a2);
                            eCFieldElement3 = eCFieldElement4.c(a2);
                        }
                        boolean i3 = a3.i();
                        if (i3) {
                            eCFieldElement6 = eCFieldElement;
                            eCFieldElement = eCFieldElement5;
                        } else {
                            eCFieldElement6 = eCFieldElement.c(a3);
                            eCFieldElement = eCFieldElement5.c(a3);
                        }
                        eCFieldElement3 = eCFieldElement.a(eCFieldElement3);
                        eCFieldElement = eCFieldElement6.a(a);
                        if (!eCFieldElement.j()) {
                            if (eCFieldElement2.j()) {
                                ECPoint p = p();
                                a = p.i();
                                eCFieldElement3 = p.j();
                                eCFieldElement = eCFieldElement3.a(eCFieldElement4).d(a);
                                eCFieldElement4 = eCFieldElement.e().a(eCFieldElement).a(a).a(d.g());
                                if (eCFieldElement4.j()) {
                                    return new F2m(d, eCFieldElement4, d.h().g(), this.f);
                                }
                                a = eCFieldElement.c(a.a(eCFieldElement4)).a(eCFieldElement4).a(eCFieldElement3).d(eCFieldElement4).a(eCFieldElement4);
                                eCFieldElement2 = d.a(ECConstants.d);
                            } else {
                                eCFieldElement = eCFieldElement.e();
                                eCFieldElement4 = eCFieldElement3.c(eCFieldElement6);
                                a = eCFieldElement3.c(a);
                                eCFieldElement4 = eCFieldElement4.c(a);
                                if (eCFieldElement4.j()) {
                                    return new F2m(d, eCFieldElement4, d.h().g(), this.f);
                                }
                                eCFieldElement3 = eCFieldElement3.c(eCFieldElement);
                                if (!i3) {
                                    eCFieldElement3 = eCFieldElement3.c(a3);
                                }
                                a = a.a(eCFieldElement).a(eCFieldElement3, eCFieldElement5.a(a2));
                                if (i2) {
                                    eCFieldElement2 = eCFieldElement3;
                                } else {
                                    eCFieldElement2 = eCFieldElement3.c(a2);
                                }
                            }
                            return new F2m(d, eCFieldElement4, a, new ECFieldElement[]{eCFieldElement2}, this.f);
                        } else if (eCFieldElement3.j()) {
                            return (F2m) v();
                        } else {
                            return (F2m) d.e();
                        }
                    } else if (eCFieldElement2.j()) {
                        return (F2m) d.e();
                    } else {
                        return f2m.a(this);
                    }
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public F2m b(F2m f2m) {
            return f2m.q() ? this : a((F2m) f2m.u());
        }

        public F2m x() {
            if (q()) {
                return this;
            }
            ECCurve d = d();
            int k = d.k();
            ECFieldElement eCFieldElement = this.c;
            switch (k) {
                case p.View_android_theme /*0*/:
                case p.Toolbar_contentInsetStart /*5*/:
                    return new F2m(d, eCFieldElement.e(), this.d.e(), this.f);
                case p.View_android_focusable /*1*/:
                case p.Toolbar_contentInsetEnd /*6*/:
                    ECFieldElement eCFieldElement2 = this.d;
                    ECFieldElement eCFieldElement3 = this.e[0];
                    return new F2m(d, eCFieldElement.e(), eCFieldElement2.e(), new ECFieldElement[]{eCFieldElement3.e()}, this.f);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public ECPoint v() {
            if (q()) {
                return this;
            }
            ECCurve d = d();
            ECFieldElement eCFieldElement = this.c;
            if (eCFieldElement.j()) {
                return d.e();
            }
            ECFieldElement a;
            ECFieldElement a2;
            ECFieldElement eCFieldElement2;
            ECFieldElement c;
            ECFieldElement e;
            ECFieldElement a3;
            switch (d.k()) {
                case p.View_android_theme /*0*/:
                    a = this.d.d(eCFieldElement).a(eCFieldElement);
                    a2 = a.e().a(a).a(d.g());
                    return new F2m(d, a2, eCFieldElement.a(a2, a.c()), this.f);
                case p.View_android_focusable /*1*/:
                    a = this.d;
                    eCFieldElement2 = this.e[0];
                    boolean i = eCFieldElement2.i();
                    c = i ? eCFieldElement : eCFieldElement.c(eCFieldElement2);
                    if (!i) {
                        a = a.c(eCFieldElement2);
                    }
                    eCFieldElement2 = eCFieldElement.e();
                    a = eCFieldElement2.a(a);
                    e = c.e();
                    a3 = a.a(c);
                    a = a3.b(a, e, d.g());
                    a2 = c.c(a);
                    eCFieldElement2 = eCFieldElement2.e().b(c, a, a3);
                    e = c.c(e);
                    return new F2m(d, a2, eCFieldElement2, new ECFieldElement[]{e}, this.f);
                case p.Toolbar_contentInsetEnd /*6*/:
                    ECFieldElement eCFieldElement3 = this.d;
                    eCFieldElement2 = this.e[0];
                    boolean i2 = eCFieldElement2.i();
                    ECFieldElement c2 = i2 ? eCFieldElement3 : eCFieldElement3.c(eCFieldElement2);
                    a = i2 ? eCFieldElement2 : eCFieldElement2.e();
                    e = d.g();
                    c = i2 ? e : e.c(a);
                    ECFieldElement a4 = eCFieldElement3.e().a(c2).a(c);
                    if (a4.j()) {
                        return new F2m(d, a4, d.h().g(), this.f);
                    }
                    a2 = a4.e();
                    a3 = i2 ? a4 : a4.c(a);
                    ECFieldElement h = d.h();
                    if (h.h() < (d.a() >> 1)) {
                        eCFieldElement = eCFieldElement3.a(eCFieldElement).e();
                        if (h.i()) {
                            eCFieldElement2 = c.a(a).e();
                        } else {
                            eCFieldElement2 = c.a(h, a.e());
                        }
                        a = eCFieldElement.a(a4).a(a).c(eCFieldElement).a(eCFieldElement2).a(a2);
                        if (e.j()) {
                            a = a.a(a3);
                        } else if (!e.i()) {
                            a = a.a(e.c().c(a3));
                        }
                        eCFieldElement2 = a;
                    } else {
                        eCFieldElement2 = (i2 ? eCFieldElement : eCFieldElement.c(eCFieldElement2)).a(a4, c2).a(a2).a(a3);
                    }
                    return new F2m(d, a2, eCFieldElement2, new ECFieldElement[]{a3}, this.f);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public ECPoint c(ECPoint eCPoint) {
            if (q()) {
                return eCPoint;
            }
            if (eCPoint.q()) {
                return v();
            }
            ECCurve d = d();
            ECFieldElement eCFieldElement = this.c;
            if (eCFieldElement.j()) {
                return eCPoint;
            }
            switch (d.k()) {
                case p.Toolbar_contentInsetEnd /*6*/:
                    ECFieldElement eCFieldElement2 = eCPoint.c;
                    ECFieldElement eCFieldElement3 = eCPoint.e[0];
                    if (eCFieldElement2.j() || !eCFieldElement3.i()) {
                        return v().b(eCPoint);
                    }
                    eCFieldElement3 = this.d;
                    ECFieldElement eCFieldElement4 = this.e[0];
                    ECFieldElement eCFieldElement5 = eCPoint.d;
                    eCFieldElement = eCFieldElement.e();
                    ECFieldElement e = eCFieldElement3.e();
                    ECFieldElement e2 = eCFieldElement4.e();
                    eCFieldElement3 = d.g().c(e2).a(e).a(eCFieldElement3.c(eCFieldElement4));
                    eCFieldElement4 = eCFieldElement5.c();
                    eCFieldElement = d.g().a(eCFieldElement4).c(e2).a(e).b(eCFieldElement3, eCFieldElement, e2);
                    eCFieldElement2 = eCFieldElement2.c(e2);
                    eCFieldElement5 = eCFieldElement2.a(eCFieldElement3).e();
                    if (eCFieldElement5.j()) {
                        if (eCFieldElement.j()) {
                            return eCPoint.v();
                        }
                        return d.e();
                    } else if (eCFieldElement.j()) {
                        return new F2m(d, eCFieldElement, d.h().g(), this.f);
                    } else {
                        return new F2m(d, eCFieldElement.e().c(eCFieldElement2), eCFieldElement.a(eCFieldElement5).e().b(eCFieldElement3, eCFieldElement4, eCFieldElement.c(eCFieldElement5).c(e2)), new ECFieldElement[]{e}, this.f);
                    }
                default:
                    return v().b(eCPoint);
            }
        }

        public ECPoint u() {
            if (q()) {
                return this;
            }
            ECFieldElement eCFieldElement = this.c;
            if (eCFieldElement.j()) {
                return this;
            }
            ECFieldElement eCFieldElement2;
            ECFieldElement eCFieldElement3;
            switch (f()) {
                case p.View_android_theme /*0*/:
                    return new F2m(this.b, eCFieldElement, this.d.a(eCFieldElement), this.f);
                case p.View_android_focusable /*1*/:
                    eCFieldElement2 = this.d;
                    eCFieldElement3 = this.e[0];
                    return new F2m(this.b, eCFieldElement, eCFieldElement2.a(eCFieldElement), new ECFieldElement[]{eCFieldElement3}, this.f);
                case p.Toolbar_contentInsetStart /*5*/:
                    return new F2m(this.b, eCFieldElement, this.d.c(), this.f);
                case p.Toolbar_contentInsetEnd /*6*/:
                    eCFieldElement2 = this.d;
                    eCFieldElement3 = this.e[0];
                    return new F2m(this.b, eCFieldElement, eCFieldElement2.a(eCFieldElement3), new ECFieldElement[]{eCFieldElement3}, this.f);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }
    }

    /* compiled from: Twttr */
    public class Fp extends AbstractFp {
        public Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            this(eCCurve, eCFieldElement, eCFieldElement2, false);
        }

        public Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, boolean z) {
            Object obj;
            Object obj2 = 1;
            super(eCCurve, eCFieldElement, eCFieldElement2);
            if (eCFieldElement == null) {
                obj = 1;
            } else {
                obj = null;
            }
            if (eCFieldElement2 != null) {
                obj2 = null;
            }
            if (obj != obj2) {
                throw new IllegalArgumentException("Exactly one of the field elements is null");
            }
            this.f = z;
        }

        Fp(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr, boolean z) {
            super(eCCurve, eCFieldElement, eCFieldElement2, eCFieldElementArr);
            this.f = z;
        }

        protected ECPoint e() {
            return new Fp(null, g(), h());
        }

        public ECFieldElement a(int i) {
            if (i == 1 && 4 == f()) {
                return x();
            }
            return super.a(i);
        }

        public ECPoint b(ECPoint eCPoint) {
            if (q()) {
                return eCPoint;
            }
            if (eCPoint.q()) {
                return this;
            }
            if (this == eCPoint) {
                return v();
            }
            ECCurve d = d();
            int k = d.k();
            ECFieldElement eCFieldElement = this.c;
            ECFieldElement eCFieldElement2 = this.d;
            ECFieldElement eCFieldElement3 = eCPoint.c;
            ECFieldElement eCFieldElement4 = eCPoint.d;
            ECFieldElement b;
            ECFieldElement b2;
            ECFieldElement c;
            switch (k) {
                case p.View_android_theme /*0*/:
                    b = eCFieldElement3.b(eCFieldElement);
                    b2 = eCFieldElement4.b(eCFieldElement2);
                    if (!b.j()) {
                        b = b2.d(b);
                        b2 = b.e().b(eCFieldElement).b(eCFieldElement3);
                        return new Fp(d, b2, b.c(eCFieldElement.b(b2)).b(eCFieldElement2), this.f);
                    } else if (b2.j()) {
                        return v();
                    } else {
                        return d.e();
                    }
                case p.View_android_focusable /*1*/:
                    b2 = this.e[0];
                    b = eCPoint.e[0];
                    boolean i = b2.i();
                    boolean i2 = b.i();
                    if (!i) {
                        eCFieldElement4 = eCFieldElement4.c(b2);
                    }
                    if (!i2) {
                        eCFieldElement2 = eCFieldElement2.c(b);
                    }
                    eCFieldElement4 = eCFieldElement4.b(eCFieldElement2);
                    if (!i) {
                        eCFieldElement3 = eCFieldElement3.c(b2);
                    }
                    if (!i2) {
                        eCFieldElement = eCFieldElement.c(b);
                    }
                    eCFieldElement3 = eCFieldElement3.b(eCFieldElement);
                    if (!eCFieldElement3.j()) {
                        if (i) {
                            b2 = b;
                        } else if (!i2) {
                            b2 = b2.c(b);
                        }
                        b = eCFieldElement3.e();
                        c = b.c(eCFieldElement3);
                        b = b.c(eCFieldElement);
                        ECFieldElement b3 = eCFieldElement4.e().c(b2).b(c).b(d(b));
                        eCFieldElement = eCFieldElement3.c(b3);
                        b = b.b(b3).a(eCFieldElement4, eCFieldElement2, c);
                        c = c.c(b2);
                        return new Fp(d, eCFieldElement, b, new ECFieldElement[]{c}, this.f);
                    } else if (eCFieldElement4.j()) {
                        return v();
                    } else {
                        return d.e();
                    }
                case p.View_paddingStart /*2*/:
                case p.View_theme /*4*/:
                    ECFieldElement[] eCFieldElementArr;
                    ECFieldElement eCFieldElement5 = this.e[0];
                    ECFieldElement eCFieldElement6 = eCPoint.e[0];
                    boolean i3 = eCFieldElement5.i();
                    if (i3 || !eCFieldElement5.equals(eCFieldElement6)) {
                        if (i3) {
                            b = eCFieldElement4;
                            c = eCFieldElement3;
                        } else {
                            b = eCFieldElement5.e();
                            c = b.c(eCFieldElement3);
                            b = b.c(eCFieldElement5).c(eCFieldElement4);
                        }
                        boolean i4 = eCFieldElement6.i();
                        if (!i4) {
                            eCFieldElement4 = eCFieldElement6.e();
                            eCFieldElement = eCFieldElement4.c(eCFieldElement);
                            eCFieldElement2 = eCFieldElement4.c(eCFieldElement6).c(eCFieldElement2);
                        }
                        eCFieldElement4 = eCFieldElement.b(c);
                        ECFieldElement b4 = eCFieldElement2.b(b);
                        if (!eCFieldElement4.j()) {
                            b = eCFieldElement4.e();
                            ECFieldElement c2 = b.c(eCFieldElement4);
                            eCFieldElement = b.c(eCFieldElement);
                            c = b4.e().a(c2).b(d(eCFieldElement));
                            eCFieldElement2 = eCFieldElement.b(c).a(b4, c2, eCFieldElement2);
                            if (i3) {
                                eCFieldElement = eCFieldElement4;
                            } else {
                                eCFieldElement = eCFieldElement4.c(eCFieldElement5);
                            }
                            if (!i4) {
                                eCFieldElement = eCFieldElement.c(eCFieldElement6);
                            }
                            ECFieldElement eCFieldElement7;
                            if (eCFieldElement == eCFieldElement4) {
                                eCFieldElement7 = b;
                                b = eCFieldElement2;
                                eCFieldElement2 = eCFieldElement7;
                                ECFieldElement eCFieldElement8 = eCFieldElement;
                                eCFieldElement = c;
                                c = eCFieldElement8;
                            } else {
                                b = eCFieldElement2;
                                eCFieldElement2 = null;
                                eCFieldElement7 = eCFieldElement;
                                eCFieldElement = c;
                                c = eCFieldElement7;
                            }
                        } else if (b4.j()) {
                            return v();
                        } else {
                            return d.e();
                        }
                    }
                    c = eCFieldElement.b(eCFieldElement3);
                    eCFieldElement4 = eCFieldElement2.b(eCFieldElement4);
                    if (!c.j()) {
                        b = c.e();
                        eCFieldElement = eCFieldElement.c(b);
                        eCFieldElement3 = eCFieldElement3.c(b);
                        eCFieldElement2 = eCFieldElement.b(eCFieldElement3).c(eCFieldElement2);
                        eCFieldElement3 = eCFieldElement4.e().b(eCFieldElement).b(eCFieldElement3);
                        eCFieldElement4 = eCFieldElement.b(eCFieldElement3).c(eCFieldElement4).b(eCFieldElement2);
                        if (i3) {
                            eCFieldElement2 = b;
                            eCFieldElement = c;
                        } else {
                            eCFieldElement = c.c(eCFieldElement5);
                            eCFieldElement2 = null;
                        }
                        c = eCFieldElement;
                        b = eCFieldElement4;
                        eCFieldElement = eCFieldElement3;
                    } else if (eCFieldElement4.j()) {
                        return v();
                    } else {
                        return d.e();
                    }
                    if (k == 4) {
                        eCFieldElement2 = b(c, eCFieldElement2);
                        eCFieldElementArr = new ECFieldElement[]{c, eCFieldElement2};
                    } else {
                        eCFieldElementArr = new ECFieldElement[]{c};
                    }
                    return new Fp(d, eCFieldElement, b, eCFieldElementArr, this.f);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public ECPoint v() {
            if (q()) {
                return this;
            }
            ECCurve d = d();
            ECFieldElement eCFieldElement = this.d;
            if (eCFieldElement.j()) {
                return d.e();
            }
            int k = d.k();
            ECFieldElement eCFieldElement2 = this.c;
            ECFieldElement d2;
            ECFieldElement b;
            boolean i;
            ECFieldElement a;
            ECFieldElement c;
            ECFieldElement d3;
            switch (k) {
                case p.View_android_theme /*0*/:
                    d2 = e(eCFieldElement2.e()).a(d().g()).d(d(eCFieldElement));
                    b = d2.e().b(d(eCFieldElement2));
                    return new Fp(d, b, d2.c(eCFieldElement2.b(b)).b(eCFieldElement), this.f);
                case p.View_android_focusable /*1*/:
                    b = this.e[0];
                    i = b.i();
                    d2 = d.g();
                    if (!(d2.j() || i)) {
                        d2 = d2.c(b.e());
                    }
                    a = d2.a(e(eCFieldElement2.e()));
                    c = i ? eCFieldElement : eCFieldElement.c(b);
                    d2 = i ? eCFieldElement.e() : c.c(eCFieldElement);
                    eCFieldElement2 = f(eCFieldElement2.c(d2));
                    eCFieldElement = a.e().b(d(eCFieldElement2));
                    d3 = d(c);
                    b = eCFieldElement.c(d3);
                    d2 = d(d2);
                    eCFieldElement2 = eCFieldElement2.b(eCFieldElement).c(a).b(d(d2.e()));
                    eCFieldElement = d(i ? d(d2) : d3.e()).c(c);
                    return new Fp(d, b, eCFieldElement2, new ECFieldElement[]{eCFieldElement}, this.f);
                case p.View_paddingStart /*2*/:
                    c = this.e[0];
                    i = c.i();
                    a = eCFieldElement.e();
                    d3 = a.e();
                    ECFieldElement g = d.g();
                    ECFieldElement d4 = g.d();
                    if (d4.a().equals(BigInteger.valueOf(3))) {
                        d2 = i ? c : c.e();
                        b = e(eCFieldElement2.a(d2).c(eCFieldElement2.b(d2)));
                        d2 = f(a.c(eCFieldElement2));
                        eCFieldElement2 = b;
                    } else {
                        b = e(eCFieldElement2.e());
                        if (i) {
                            d2 = b.a(g);
                        } else if (g.j()) {
                            d2 = b;
                        } else {
                            d2 = (i ? c : c.e()).e();
                            if (d4.h() < g.h()) {
                                d2 = b.b(d2.c(d4));
                            } else {
                                d2 = b.a(d2.c(g));
                            }
                        }
                        eCFieldElement2 = d2;
                        d2 = f(eCFieldElement2.c(a));
                    }
                    b = eCFieldElement2.e().b(d(d2));
                    eCFieldElement2 = d2.b(b).c(eCFieldElement2).b(g(d3));
                    d2 = d(eCFieldElement);
                    if (i) {
                        eCFieldElement = d2;
                    } else {
                        eCFieldElement = d2.c(c);
                    }
                    return new Fp(d, b, eCFieldElement2, new ECFieldElement[]{eCFieldElement}, this.f);
                case p.View_theme /*4*/:
                    return b(true);
                default:
                    throw new IllegalStateException("unsupported coordinate system");
            }
        }

        public ECPoint c(ECPoint eCPoint) {
            if (this == eCPoint) {
                return w();
            }
            if (q()) {
                return eCPoint;
            }
            if (eCPoint.q()) {
                return v();
            }
            ECFieldElement eCFieldElement = this.d;
            if (eCFieldElement.j()) {
                return eCPoint;
            }
            ECCurve d = d();
            switch (d.k()) {
                case p.View_android_theme /*0*/:
                    ECFieldElement eCFieldElement2 = this.c;
                    ECFieldElement eCFieldElement3 = eCPoint.c;
                    ECFieldElement eCFieldElement4 = eCPoint.d;
                    ECFieldElement b = eCFieldElement3.b(eCFieldElement2);
                    eCFieldElement4 = eCFieldElement4.b(eCFieldElement);
                    if (b.j()) {
                        return eCFieldElement4.j() ? w() : this;
                    } else {
                        ECFieldElement e = b.e();
                        ECFieldElement b2 = e.c(d(eCFieldElement2).a(eCFieldElement3)).b(eCFieldElement4.e());
                        if (b2.j()) {
                            return d.e();
                        }
                        ECFieldElement f = b2.c(b).f();
                        eCFieldElement4 = b2.c(f).c(eCFieldElement4);
                        b = d(eCFieldElement).c(e).c(b).c(f).b(eCFieldElement4);
                        eCFieldElement3 = b.b(eCFieldElement4).c(eCFieldElement4.a(b)).a(eCFieldElement3);
                        return new Fp(d, eCFieldElement3, eCFieldElement2.b(eCFieldElement3).c(b).b(eCFieldElement), this.f);
                    }
                case p.View_theme /*4*/:
                    return b(false).b(eCPoint);
                default:
                    return v().b(eCPoint);
            }
        }

        public ECPoint w() {
            if (q()) {
                return this;
            }
            ECFieldElement eCFieldElement = this.d;
            if (eCFieldElement.j()) {
                return this;
            }
            ECCurve d = d();
            switch (d.k()) {
                case p.View_android_theme /*0*/:
                    ECFieldElement eCFieldElement2 = this.c;
                    ECFieldElement d2 = d(eCFieldElement);
                    ECFieldElement e = d2.e();
                    ECFieldElement a = e(eCFieldElement2.e()).a(d().g());
                    ECFieldElement b = e(eCFieldElement2).c(e).b(a.e());
                    if (b.j()) {
                        return d().e();
                    }
                    d2 = b.c(d2).f();
                    a = b.c(d2).c(a);
                    d2 = e.e().c(d2).b(a);
                    e = d2.b(a).c(a.a(d2)).a(eCFieldElement2);
                    return new Fp(d, e, eCFieldElement2.b(e).c(d2).b(eCFieldElement), this.f);
                case p.View_theme /*4*/:
                    return b(false).b((ECPoint) this);
                default:
                    return v().b((ECPoint) this);
            }
        }

        public ECPoint b(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("'e' cannot be negative");
            } else if (i == 0 || q()) {
                return this;
            } else {
                if (i == 1) {
                    return v();
                }
                ECCurve d = d();
                ECFieldElement eCFieldElement = this.d;
                if (eCFieldElement.j()) {
                    return d.e();
                }
                int k = d.k();
                ECFieldElement g = d.g();
                ECFieldElement eCFieldElement2 = this.c;
                ECFieldElement a = this.e.length < 1 ? d.a(ECConstants.d) : this.e[0];
                if (!a.i()) {
                    switch (k) {
                        case p.View_android_focusable /*1*/:
                            g = a.e();
                            eCFieldElement2 = eCFieldElement2.c(a);
                            eCFieldElement = eCFieldElement.c(g);
                            g = b(a, g);
                            break;
                        case p.View_paddingStart /*2*/:
                            g = b(a, null);
                            break;
                        case p.View_theme /*4*/:
                            g = x();
                            break;
                    }
                }
                int i2 = 0;
                ECFieldElement eCFieldElement3 = a;
                ECFieldElement eCFieldElement4 = g;
                g = eCFieldElement;
                while (i2 < i) {
                    if (g.j()) {
                        return d.e();
                    }
                    a = e(eCFieldElement2.e());
                    eCFieldElement = d(g);
                    g = eCFieldElement.c(g);
                    ECFieldElement d2 = d(eCFieldElement2.c(g));
                    g = d(g.e());
                    if (eCFieldElement4.j()) {
                        eCFieldElement2 = eCFieldElement4;
                    } else {
                        a = a.a(eCFieldElement4);
                        eCFieldElement2 = d(g.c(eCFieldElement4));
                    }
                    eCFieldElement4 = a.e().b(d(d2));
                    d2 = a.c(d2.b(eCFieldElement4)).b(g);
                    if (eCFieldElement3.i()) {
                        a = eCFieldElement;
                    } else {
                        a = eCFieldElement.c(eCFieldElement3);
                    }
                    i2++;
                    eCFieldElement3 = a;
                    g = d2;
                    ECFieldElement eCFieldElement5 = eCFieldElement2;
                    eCFieldElement2 = eCFieldElement4;
                    eCFieldElement4 = eCFieldElement5;
                }
                switch (k) {
                    case p.View_android_theme /*0*/:
                        a = eCFieldElement3.f();
                        eCFieldElement = a.e();
                        return new Fp(d, eCFieldElement2.c(eCFieldElement), g.c(eCFieldElement.c(a)), this.f);
                    case p.View_android_focusable /*1*/:
                        return new Fp(d, eCFieldElement2.c(eCFieldElement3), g, new ECFieldElement[]{eCFieldElement3.c(eCFieldElement3.e())}, this.f);
                    case p.View_paddingStart /*2*/:
                        return new Fp(d, eCFieldElement2, g, new ECFieldElement[]{eCFieldElement3}, this.f);
                    case p.View_theme /*4*/:
                        return new Fp(d, eCFieldElement2, g, new ECFieldElement[]{eCFieldElement3, eCFieldElement4}, this.f);
                    default:
                        throw new IllegalStateException("unsupported coordinate system");
                }
            }
        }

        protected ECFieldElement d(ECFieldElement eCFieldElement) {
            return eCFieldElement.a(eCFieldElement);
        }

        protected ECFieldElement e(ECFieldElement eCFieldElement) {
            return d(eCFieldElement).a(eCFieldElement);
        }

        protected ECFieldElement f(ECFieldElement eCFieldElement) {
            return d(d(eCFieldElement));
        }

        protected ECFieldElement g(ECFieldElement eCFieldElement) {
            return f(d(eCFieldElement));
        }

        public ECPoint u() {
            if (q()) {
                return this;
            }
            ECCurve d = d();
            if (d.k() != 0) {
                return new Fp(d, this.c, this.d.d(), this.e, this.f);
            }
            return new Fp(d, this.c, this.d.d(), this.f);
        }

        protected ECFieldElement b(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
            ECFieldElement g = d().g();
            if (g.j() || eCFieldElement.i()) {
                return g;
            }
            if (eCFieldElement2 == null) {
                eCFieldElement2 = eCFieldElement.e();
            }
            ECFieldElement e = eCFieldElement2.e();
            ECFieldElement d = g.d();
            if (d.h() < g.h()) {
                return e.c(d).d();
            }
            return e.c(g);
        }

        protected ECFieldElement x() {
            ECFieldElement eCFieldElement = this.e[1];
            if (eCFieldElement != null) {
                return eCFieldElement;
            }
            ECFieldElement[] eCFieldElementArr = this.e;
            eCFieldElement = b(this.e[0], null);
            eCFieldElementArr[1] = eCFieldElement;
            return eCFieldElement;
        }

        protected Fp b(boolean z) {
            ECFieldElement eCFieldElement = this.c;
            ECFieldElement eCFieldElement2 = this.d;
            ECFieldElement eCFieldElement3 = this.e[0];
            ECFieldElement x = x();
            ECFieldElement a = e(eCFieldElement.e()).a(x);
            ECFieldElement d = d(eCFieldElement2);
            ECFieldElement c = d.c(eCFieldElement2);
            eCFieldElement = d(eCFieldElement.c(c));
            eCFieldElement2 = a.e().b(d(eCFieldElement));
            c = d(c.e());
            a = a.c(eCFieldElement.b(eCFieldElement2)).b(c);
            x = z ? d(c.c(x)) : null;
            c = eCFieldElement3.i() ? d : d.c(eCFieldElement3);
            return new Fp(d(), eCFieldElement2, a, new ECFieldElement[]{c, x}, this.f);
        }
    }

    public abstract ECPoint b(ECPoint eCPoint);

    protected abstract boolean b();

    protected abstract ECPoint e();

    protected abstract boolean t();

    public abstract ECPoint u();

    public abstract ECPoint v();

    static {
        a = new ECFieldElement[0];
    }

    protected static ECFieldElement[] a(ECCurve eCCurve) {
        int k = eCCurve == null ? 0 : eCCurve.k();
        switch (k) {
            case p.View_android_theme /*0*/:
            case p.Toolbar_contentInsetStart /*5*/:
                return a;
            default:
                ECFieldElement a = eCCurve.a(ECConstants.d);
                switch (k) {
                    case p.View_android_focusable /*1*/:
                    case p.View_paddingStart /*2*/:
                    case p.Toolbar_contentInsetEnd /*6*/:
                        return new ECFieldElement[]{a};
                    case p.View_paddingEnd /*3*/:
                        return new ECFieldElement[]{a, a, a};
                    case p.View_theme /*4*/:
                        return new ECFieldElement[]{a, eCCurve.g()};
                    default:
                        throw new IllegalArgumentException("unknown coordinate system");
                }
        }
    }

    protected ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        this(eCCurve, eCFieldElement, eCFieldElement2, a(eCCurve));
    }

    protected ECPoint(ECCurve eCCurve, ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2, ECFieldElement[] eCFieldElementArr) {
        this.g = null;
        this.b = eCCurve;
        this.c = eCFieldElement;
        this.d = eCFieldElement2;
        this.e = eCFieldElementArr;
    }

    protected boolean a() {
        BigInteger j = this.b.j();
        return j == null || j.equals(ECConstants.d) || !ECAlgorithms.a(this, j).q();
    }

    public final ECPoint c() {
        return p().e();
    }

    public ECCurve d() {
        return this.b;
    }

    protected int f() {
        return this.b == null ? 0 : this.b.k();
    }

    public ECFieldElement g() {
        n();
        return i();
    }

    public ECFieldElement h() {
        n();
        return j();
    }

    public ECFieldElement i() {
        return this.c;
    }

    public ECFieldElement j() {
        return this.d;
    }

    public ECFieldElement a(int i) {
        return (i < 0 || i >= this.e.length) ? null : this.e[i];
    }

    protected final ECFieldElement k() {
        return this.c;
    }

    protected final ECFieldElement l() {
        return this.d;
    }

    protected final ECFieldElement[] m() {
        return this.e;
    }

    protected void n() {
        if (!o()) {
            throw new IllegalStateException("point not in normal form");
        }
    }

    public boolean o() {
        int f = f();
        if (f == 0 || f == 5 || q() || this.e[0].i()) {
            return true;
        }
        return false;
    }

    public ECPoint p() {
        if (q()) {
            return this;
        }
        switch (f()) {
            case p.View_android_theme /*0*/:
            case p.Toolbar_contentInsetStart /*5*/:
                return this;
            default:
                ECFieldElement a = a(0);
                if (a.i()) {
                    return this;
                }
                return a(a.f());
        }
    }

    ECPoint a(ECFieldElement eCFieldElement) {
        switch (f()) {
            case p.View_android_focusable /*1*/:
            case p.Toolbar_contentInsetEnd /*6*/:
                return a(eCFieldElement, eCFieldElement);
            case p.View_paddingStart /*2*/:
            case p.View_paddingEnd /*3*/:
            case p.View_theme /*4*/:
                ECFieldElement e = eCFieldElement.e();
                return a(e, e.c(eCFieldElement));
            default:
                throw new IllegalStateException("not a projective coordinate system");
        }
    }

    protected ECPoint a(ECFieldElement eCFieldElement, ECFieldElement eCFieldElement2) {
        return d().a(k().c(eCFieldElement), l().c(eCFieldElement2), this.f);
    }

    public boolean q() {
        return this.c == null || this.d == null || (this.e.length > 0 && this.e[0].j());
    }

    public boolean r() {
        if (q() || d() == null) {
            return true;
        }
        if (!b()) {
            return false;
        }
        if (a()) {
            return true;
        }
        return false;
    }

    public ECPoint b(ECFieldElement eCFieldElement) {
        return q() ? this : d().a(k().c(eCFieldElement), l(), m(), this.f);
    }

    public ECPoint c(ECFieldElement eCFieldElement) {
        return q() ? this : d().a(k(), l().c(eCFieldElement), m(), this.f);
    }

    public boolean a(ECPoint eCPoint) {
        boolean z = true;
        if (eCPoint == null) {
            return false;
        }
        ECCurve d = d();
        ECCurve d2 = eCPoint.d();
        if (d == null) {
            int i = 1;
        } else {
            boolean z2 = false;
        }
        if (d2 == null) {
            int i2 = 1;
        } else {
            boolean z3 = false;
        }
        boolean q = q();
        boolean q2 = eCPoint.q();
        if (q || q2) {
            if (!(q && q2 && (i != 0 || i2 != 0 || d.a(d2)))) {
                z = false;
            }
            return z;
        }
        if (i == 0 || i2 == 0) {
            if (i != 0) {
                eCPoint = eCPoint.p();
            } else if (i2 != 0) {
                this = p();
            } else if (!d.a(d2)) {
                return false;
            } else {
                ECPoint[] eCPointArr = new ECPoint[]{this, d.a(eCPoint)};
                d.a(eCPointArr);
                this = eCPointArr[0];
                eCPoint = eCPointArr[1];
            }
        }
        if (!(i().equals(eCPoint.i()) && j().equals(eCPoint.j()))) {
            z = false;
        }
        return z;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ECPoint) {
            return a((ECPoint) obj);
        }
        return false;
    }

    public int hashCode() {
        ECCurve d = d();
        int hashCode = d == null ? 0 : d.hashCode() ^ -1;
        if (q()) {
            return hashCode;
        }
        ECPoint p = p();
        return (hashCode ^ (p.i().hashCode() * 17)) ^ (p.j().hashCode() * 257);
    }

    public String toString() {
        if (q()) {
            return "INF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        stringBuffer.append(k());
        stringBuffer.append(',');
        stringBuffer.append(l());
        for (Object append : this.e) {
            stringBuffer.append(',');
            stringBuffer.append(append);
        }
        stringBuffer.append(')');
        return stringBuffer.toString();
    }

    public byte[] s() {
        return a(this.f);
    }

    public byte[] a(boolean z) {
        if (q()) {
            return new byte[1];
        }
        ECPoint p = p();
        Object l = p.i().l();
        if (z) {
            Object obj = new byte[(l.length + 1)];
            obj[0] = (byte) (p.t() ? 3 : 2);
            System.arraycopy(l, 0, obj, 1, l.length);
            return obj;
        }
        obj = p.j().l();
        byte[] bArr = new byte[((l.length + obj.length) + 1)];
        bArr[0] = (byte) 4;
        System.arraycopy(l, 0, bArr, 1, l.length);
        System.arraycopy(obj, 0, bArr, l.length + 1, obj.length);
        return bArr;
    }

    public ECPoint b(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("'e' cannot be negative");
        }
        while (true) {
            i--;
            if (i < 0) {
                return this;
            }
            this = v();
        }
    }

    public ECPoint c(ECPoint eCPoint) {
        return v().b(eCPoint);
    }

    public ECPoint w() {
        return c(this);
    }

    public ECPoint a(BigInteger bigInteger) {
        return d().m().a(this, bigInteger);
    }
}
