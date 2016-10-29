package defpackage;

import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.a;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.b;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.c;
import com.google.i18n.phonenumbers.repackaged.com.google.protobuf.nano.e;
import java.io.IOException;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
/* renamed from: rc */
public final class rc extends c {
    private static volatile rc[] G;
    public rb[] A;
    public boolean B;
    public String C;
    public boolean D;
    public boolean E;
    public re a;
    public re b;
    public re c;
    public re d;
    public re e;
    public re f;
    public re g;
    public re h;
    public re i;
    public re j;
    public re k;
    public re l;
    public re m;
    public re n;
    public re o;
    public re p;
    public String q;
    public int r;
    public String s;
    public String t;
    public String u;
    public String v;
    public String w;
    public String x;
    public boolean y;
    public rb[] z;

    public /* synthetic */ c b(a aVar) throws IOException {
        return a(aVar);
    }

    public static rc[] a() {
        if (G == null) {
            synchronized (b.a) {
                if (G == null) {
                    G = new rc[0];
                }
            }
        }
        return G;
    }

    public rc() {
        b();
    }

    public rc b() {
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
        this.q = "";
        this.r = 0;
        this.s = "";
        this.t = "";
        this.u = "";
        this.v = "";
        this.w = "";
        this.x = "";
        this.y = false;
        this.z = rb.a();
        this.A = rb.a();
        this.B = false;
        this.C = "";
        this.D = false;
        this.E = false;
        this.F = -1;
        return this;
    }

    public rc a(a aVar) throws IOException {
        while (true) {
            int a = aVar.a();
            int b;
            Object obj;
            switch (a) {
                case p.View_android_theme /*0*/:
                    break;
                case p.Toolbar_titleTextAppearance /*10*/:
                    if (this.a == null) {
                        this.a = new re();
                    }
                    aVar.a(this.a);
                    continue;
                case p.Toolbar_collapseIcon /*18*/:
                    if (this.b == null) {
                        this.b = new re();
                    }
                    aVar.a(this.b);
                    continue;
                case p.ActionBar_homeAsUpIndicator /*26*/:
                    if (this.c == null) {
                        this.c = new re();
                    }
                    aVar.a(this.c);
                    continue;
                case ApiRunnable.ACTION_CODE_BROADCAST_SUMMARY /*34*/:
                    if (this.d == null) {
                        this.d = new re();
                    }
                    aVar.a(this.d);
                    continue;
                case cse.AppCompatTheme_dialogTheme /*42*/:
                    if (this.e == null) {
                        this.e = new re();
                    }
                    aVar.a(this.e);
                    continue;
                case ApiRunnable.ACTION_CODE_SET_RANK_PARAMETERS /*50*/:
                    if (this.f == null) {
                        this.f = new re();
                    }
                    aVar.a(this.f);
                    continue;
                case ApiRunnable.ACTION_CODE_ADJUST_BROADCAST_RANK /*58*/:
                    if (this.g == null) {
                        this.g = new re();
                    }
                    aVar.a(this.g);
                    continue;
                case ApiRunnable.ACTION_CODE_ACCESS_CHAT /*66*/:
                    if (this.h == null) {
                        this.h = new re();
                    }
                    aVar.a(this.h);
                    continue;
                case ApiRunnable.ACTION_CODE_VOTE /*74*/:
                    this.q = aVar.e();
                    continue;
                case cse.AppCompatTheme_panelMenuListTheme /*80*/:
                    this.r = aVar.c();
                    continue;
                case cse.AppCompatTheme_controlBackground /*90*/:
                    this.s = aVar.e();
                    continue;
                case cse.AppCompatTheme_buttonBarNeutralButtonStyle /*98*/:
                    this.u = aVar.e();
                    continue;
                case cse.AppCompatTheme_ratingBarStyle /*106*/:
                    this.v = aVar.e();
                    continue;
                case 122:
                    this.w = aVar.e();
                    continue;
                case 130:
                    this.x = aVar.e();
                    continue;
                case 138:
                    this.t = aVar.e();
                    continue;
                case 144:
                    this.y = aVar.d();
                    continue;
                case 154:
                    b = e.b(aVar, 154);
                    if (this.z == null) {
                        a = 0;
                    } else {
                        a = this.z.length;
                    }
                    obj = new rb[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.z, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new rb();
                        aVar.a(obj[a]);
                        aVar.a();
                        a++;
                    }
                    obj[a] = new rb();
                    aVar.a(obj[a]);
                    this.z = obj;
                    continue;
                case 162:
                    b = e.b(aVar, 162);
                    if (this.A == null) {
                        a = 0;
                    } else {
                        a = this.A.length;
                    }
                    obj = new rb[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.A, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new rb();
                        aVar.a(obj[a]);
                        aVar.a();
                        a++;
                    }
                    obj[a] = new rb();
                    aVar.a(obj[a]);
                    this.A = obj;
                    continue;
                case 170:
                    if (this.i == null) {
                        this.i = new re();
                    }
                    aVar.a(this.i);
                    continue;
                case 176:
                    this.B = aVar.d();
                    continue;
                case 186:
                    this.C = aVar.e();
                    continue;
                case 194:
                    if (this.p == null) {
                        this.p = new re();
                    }
                    aVar.a(this.p);
                    continue;
                case ApiRunnable.ACTION_CODE_PUBLIC_PING_WATCHING /*202*/:
                    if (this.j == null) {
                        this.j = new re();
                    }
                    aVar.a(this.j);
                    continue;
                case ApiRunnable.ACTION_CODE_PUBLIC_BLOCK /*208*/:
                    this.D = aVar.d();
                    continue;
                case 218:
                    if (this.k == null) {
                        this.k = new re();
                    }
                    aVar.a(this.k);
                    continue;
                case 226:
                    if (this.l == null) {
                        this.l = new re();
                    }
                    aVar.a(this.l);
                    continue;
                case 234:
                    if (this.m == null) {
                        this.m = new re();
                    }
                    aVar.a(this.m);
                    continue;
                case 242:
                    if (this.n == null) {
                        this.n = new re();
                    }
                    aVar.a(this.n);
                    continue;
                case 250:
                    if (this.o == null) {
                        this.o = new re();
                    }
                    aVar.a(this.o);
                    continue;
                case 256:
                    this.E = aVar.d();
                    continue;
                default:
                    if (!e.a(aVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }
}
