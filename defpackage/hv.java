package defpackage;

import com.google.android.gms.internal.xm;
import com.google.android.gms.internal.xs;
import com.google.android.gms.internal.xv;
import com.google.android.gms.internal.zzsn;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* renamed from: hv */
public final class hv extends xs {
    public Long A;
    public String B;
    public Long C;
    public Long D;
    public Long E;
    public hx F;
    public Long G;
    public Long H;
    public Long I;
    public Long J;
    public hw[] K;
    public Long L;
    public String M;
    public Integer N;
    public Boolean O;
    public String P;
    public Long Q;
    public hy R;
    public String a;
    public String b;
    public Long c;
    public Long d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public Long i;
    public Long j;
    public Long k;
    public Long l;
    public String m;
    public Long n;
    public Long o;
    public Long p;
    public Long q;
    public Long r;
    public Long s;
    public Long t;
    public Long u;
    public Long v;
    public String w;
    public String x;
    public Long y;
    public Long z;

    public hv() {
        a();
    }

    public hv a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
        this.i = null;
        this.j = null;
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
        this.o = null;
        this.p = null;
        this.q = null;
        this.r = null;
        this.s = null;
        this.t = null;
        this.u = null;
        this.v = null;
        this.w = null;
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
        this.B = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.H = null;
        this.I = null;
        this.J = null;
        this.K = hw.a();
        this.L = null;
        this.M = null;
        this.N = null;
        this.O = null;
        this.P = null;
        this.Q = null;
        this.R = null;
        this.S = -1;
        return this;
    }

    public hv a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    this.a = xmVar.h();
                    continue;
                case p.Toolbar_collapseIcon /*18*/:
                    this.b = xmVar.h();
                    continue;
                case p.Toolbar_subtitleTextColor /*24*/:
                    this.c = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_PING_BROADCAST /*32*/:
                    this.d = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_UPLOAD_TEST /*40*/:
                    this.e = Long.valueOf(xmVar.e());
                    continue;
                case cse.AppCompatTheme_homeAsUpIndicator /*48*/:
                    this.f = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_UNMUTE /*56*/:
                    this.g = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_GET_BROADCASTS_FOR_TELEPORT /*64*/:
                    this.h = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_GET_TRENDING_LOCATIONS /*72*/:
                    this.i = Long.valueOf(xmVar.e());
                    continue;
                case cse.AppCompatTheme_panelMenuListTheme /*80*/:
                    this.j = Long.valueOf(xmVar.e());
                    continue;
                case cse.AppCompatTheme_colorButtonNormal /*88*/:
                    this.k = Long.valueOf(xmVar.e());
                    continue;
                case cse.AppCompatTheme_buttonBarPositiveButtonStyle /*96*/:
                    this.l = Long.valueOf(xmVar.e());
                    continue;
                case cse.AppCompatTheme_ratingBarStyle /*106*/:
                    this.m = xmVar.h();
                    continue;
                case 112:
                    this.n = Long.valueOf(xmVar.e());
                    continue;
                case 120:
                    this.o = Long.valueOf(xmVar.e());
                    continue;
                case 128:
                    this.p = Long.valueOf(xmVar.e());
                    continue;
                case 136:
                    this.q = Long.valueOf(xmVar.e());
                    continue;
                case 144:
                    this.r = Long.valueOf(xmVar.e());
                    continue;
                case 152:
                    this.s = Long.valueOf(xmVar.e());
                    continue;
                case 160:
                    this.t = Long.valueOf(xmVar.e());
                    continue;
                case 168:
                    this.L = Long.valueOf(xmVar.e());
                    continue;
                case 176:
                    this.u = Long.valueOf(xmVar.e());
                    continue;
                case 184:
                    this.v = Long.valueOf(xmVar.e());
                    continue;
                case 194:
                    this.M = xmVar.h();
                    continue;
                case ApiRunnable.ACTION_CODE_PUBLIC_GET_BROADCASTS /*200*/:
                    this.Q = Long.valueOf(xmVar.e());
                    continue;
                case ApiRunnable.ACTION_CODE_PUBLIC_BLOCK /*208*/:
                    a = xmVar.f();
                    switch (a) {
                        case p.View_android_theme /*0*/:
                        case p.View_android_focusable /*1*/:
                        case p.View_paddingStart /*2*/:
                        case p.View_paddingEnd /*3*/:
                        case p.View_theme /*4*/:
                        case p.Toolbar_contentInsetStart /*5*/:
                        case p.Toolbar_contentInsetEnd /*6*/:
                            this.N = Integer.valueOf(a);
                            break;
                        default:
                            continue;
                    }
                case 218:
                    this.w = xmVar.h();
                    continue;
                case 224:
                    this.O = Boolean.valueOf(xmVar.g());
                    continue;
                case 234:
                    this.x = xmVar.h();
                    continue;
                case 242:
                    this.P = xmVar.h();
                    continue;
                case 248:
                    this.y = Long.valueOf(xmVar.e());
                    continue;
                case 256:
                    this.z = Long.valueOf(xmVar.e());
                    continue;
                case 264:
                    this.A = Long.valueOf(xmVar.e());
                    continue;
                case 274:
                    this.B = xmVar.h();
                    continue;
                case 280:
                    this.C = Long.valueOf(xmVar.e());
                    continue;
                case 288:
                    this.D = Long.valueOf(xmVar.e());
                    continue;
                case 296:
                    this.E = Long.valueOf(xmVar.e());
                    continue;
                case 306:
                    if (this.F == null) {
                        this.F = new hx();
                    }
                    xmVar.a(this.F);
                    continue;
                case 312:
                    this.G = Long.valueOf(xmVar.e());
                    continue;
                case 320:
                    this.H = Long.valueOf(xmVar.e());
                    continue;
                case 328:
                    this.I = Long.valueOf(xmVar.e());
                    continue;
                case 336:
                    this.J = Long.valueOf(xmVar.e());
                    continue;
                case 346:
                    int b = xv.b(xmVar, 346);
                    a = this.K == null ? 0 : this.K.length;
                    Object obj = new hw[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.K, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new hw();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new hw();
                    xmVar.a(obj[a]);
                    this.K = obj;
                    continue;
                case 1610:
                    if (this.R == null) {
                        this.R = new hy();
                    }
                    xmVar.a(this.R);
                    continue;
                default:
                    if (!xv.a(xmVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        if (this.a != null) {
            com_google_android_gms_internal_zzsn.a(1, this.a);
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b);
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.b(3, this.c.longValue());
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.b(4, this.d.longValue());
        }
        if (this.e != null) {
            com_google_android_gms_internal_zzsn.b(5, this.e.longValue());
        }
        if (this.f != null) {
            com_google_android_gms_internal_zzsn.b(6, this.f.longValue());
        }
        if (this.g != null) {
            com_google_android_gms_internal_zzsn.b(7, this.g.longValue());
        }
        if (this.h != null) {
            com_google_android_gms_internal_zzsn.b(8, this.h.longValue());
        }
        if (this.i != null) {
            com_google_android_gms_internal_zzsn.b(9, this.i.longValue());
        }
        if (this.j != null) {
            com_google_android_gms_internal_zzsn.b(10, this.j.longValue());
        }
        if (this.k != null) {
            com_google_android_gms_internal_zzsn.b(11, this.k.longValue());
        }
        if (this.l != null) {
            com_google_android_gms_internal_zzsn.b(12, this.l.longValue());
        }
        if (this.m != null) {
            com_google_android_gms_internal_zzsn.a(13, this.m);
        }
        if (this.n != null) {
            com_google_android_gms_internal_zzsn.b(14, this.n.longValue());
        }
        if (this.o != null) {
            com_google_android_gms_internal_zzsn.b(15, this.o.longValue());
        }
        if (this.p != null) {
            com_google_android_gms_internal_zzsn.b(16, this.p.longValue());
        }
        if (this.q != null) {
            com_google_android_gms_internal_zzsn.b(17, this.q.longValue());
        }
        if (this.r != null) {
            com_google_android_gms_internal_zzsn.b(18, this.r.longValue());
        }
        if (this.s != null) {
            com_google_android_gms_internal_zzsn.b(19, this.s.longValue());
        }
        if (this.t != null) {
            com_google_android_gms_internal_zzsn.b(20, this.t.longValue());
        }
        if (this.L != null) {
            com_google_android_gms_internal_zzsn.b(21, this.L.longValue());
        }
        if (this.u != null) {
            com_google_android_gms_internal_zzsn.b(22, this.u.longValue());
        }
        if (this.v != null) {
            com_google_android_gms_internal_zzsn.b(23, this.v.longValue());
        }
        if (this.M != null) {
            com_google_android_gms_internal_zzsn.a(24, this.M);
        }
        if (this.Q != null) {
            com_google_android_gms_internal_zzsn.b(25, this.Q.longValue());
        }
        if (this.N != null) {
            com_google_android_gms_internal_zzsn.a(26, this.N.intValue());
        }
        if (this.w != null) {
            com_google_android_gms_internal_zzsn.a(27, this.w);
        }
        if (this.O != null) {
            com_google_android_gms_internal_zzsn.a(28, this.O.booleanValue());
        }
        if (this.x != null) {
            com_google_android_gms_internal_zzsn.a(29, this.x);
        }
        if (this.P != null) {
            com_google_android_gms_internal_zzsn.a(30, this.P);
        }
        if (this.y != null) {
            com_google_android_gms_internal_zzsn.b(31, this.y.longValue());
        }
        if (this.z != null) {
            com_google_android_gms_internal_zzsn.b(32, this.z.longValue());
        }
        if (this.A != null) {
            com_google_android_gms_internal_zzsn.b(33, this.A.longValue());
        }
        if (this.B != null) {
            com_google_android_gms_internal_zzsn.a(34, this.B);
        }
        if (this.C != null) {
            com_google_android_gms_internal_zzsn.b(35, this.C.longValue());
        }
        if (this.D != null) {
            com_google_android_gms_internal_zzsn.b(36, this.D.longValue());
        }
        if (this.E != null) {
            com_google_android_gms_internal_zzsn.b(37, this.E.longValue());
        }
        if (this.F != null) {
            com_google_android_gms_internal_zzsn.a(38, this.F);
        }
        if (this.G != null) {
            com_google_android_gms_internal_zzsn.b(39, this.G.longValue());
        }
        if (this.H != null) {
            com_google_android_gms_internal_zzsn.b(40, this.H.longValue());
        }
        if (this.I != null) {
            com_google_android_gms_internal_zzsn.b(41, this.I.longValue());
        }
        if (this.J != null) {
            com_google_android_gms_internal_zzsn.b(42, this.J.longValue());
        }
        if (this.K != null && this.K.length > 0) {
            for (xs xsVar : this.K) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(43, xsVar);
                }
            }
        }
        if (this.R != null) {
            com_google_android_gms_internal_zzsn.a(201, this.R);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a);
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.d(3, this.c.longValue());
        }
        if (this.d != null) {
            b += zzsn.d(4, this.d.longValue());
        }
        if (this.e != null) {
            b += zzsn.d(5, this.e.longValue());
        }
        if (this.f != null) {
            b += zzsn.d(6, this.f.longValue());
        }
        if (this.g != null) {
            b += zzsn.d(7, this.g.longValue());
        }
        if (this.h != null) {
            b += zzsn.d(8, this.h.longValue());
        }
        if (this.i != null) {
            b += zzsn.d(9, this.i.longValue());
        }
        if (this.j != null) {
            b += zzsn.d(10, this.j.longValue());
        }
        if (this.k != null) {
            b += zzsn.d(11, this.k.longValue());
        }
        if (this.l != null) {
            b += zzsn.d(12, this.l.longValue());
        }
        if (this.m != null) {
            b += zzsn.b(13, this.m);
        }
        if (this.n != null) {
            b += zzsn.d(14, this.n.longValue());
        }
        if (this.o != null) {
            b += zzsn.d(15, this.o.longValue());
        }
        if (this.p != null) {
            b += zzsn.d(16, this.p.longValue());
        }
        if (this.q != null) {
            b += zzsn.d(17, this.q.longValue());
        }
        if (this.r != null) {
            b += zzsn.d(18, this.r.longValue());
        }
        if (this.s != null) {
            b += zzsn.d(19, this.s.longValue());
        }
        if (this.t != null) {
            b += zzsn.d(20, this.t.longValue());
        }
        if (this.L != null) {
            b += zzsn.d(21, this.L.longValue());
        }
        if (this.u != null) {
            b += zzsn.d(22, this.u.longValue());
        }
        if (this.v != null) {
            b += zzsn.d(23, this.v.longValue());
        }
        if (this.M != null) {
            b += zzsn.b(24, this.M);
        }
        if (this.Q != null) {
            b += zzsn.d(25, this.Q.longValue());
        }
        if (this.N != null) {
            b += zzsn.b(26, this.N.intValue());
        }
        if (this.w != null) {
            b += zzsn.b(27, this.w);
        }
        if (this.O != null) {
            b += zzsn.b(28, this.O.booleanValue());
        }
        if (this.x != null) {
            b += zzsn.b(29, this.x);
        }
        if (this.P != null) {
            b += zzsn.b(30, this.P);
        }
        if (this.y != null) {
            b += zzsn.d(31, this.y.longValue());
        }
        if (this.z != null) {
            b += zzsn.d(32, this.z.longValue());
        }
        if (this.A != null) {
            b += zzsn.d(33, this.A.longValue());
        }
        if (this.B != null) {
            b += zzsn.b(34, this.B);
        }
        if (this.C != null) {
            b += zzsn.d(35, this.C.longValue());
        }
        if (this.D != null) {
            b += zzsn.d(36, this.D.longValue());
        }
        if (this.E != null) {
            b += zzsn.d(37, this.E.longValue());
        }
        if (this.F != null) {
            b += zzsn.c(38, this.F);
        }
        if (this.G != null) {
            b += zzsn.d(39, this.G.longValue());
        }
        if (this.H != null) {
            b += zzsn.d(40, this.H.longValue());
        }
        if (this.I != null) {
            b += zzsn.d(41, this.I.longValue());
        }
        if (this.J != null) {
            b += zzsn.d(42, this.J.longValue());
        }
        if (this.K != null && this.K.length > 0) {
            int i = b;
            for (xs xsVar : this.K) {
                if (xsVar != null) {
                    i += zzsn.c(43, xsVar);
                }
            }
            b = i;
        }
        return this.R != null ? b + zzsn.c(201, this.R) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }
}
