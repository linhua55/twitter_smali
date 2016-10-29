package com.google.android.gms.internal;

import com.google.android.exoplayer.extractor.ts.PsExtractor;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wv extends xs {
    private static volatile wv[] B;
    public wr[] A;
    public Integer a;
    public ws[] b;
    public wx[] c;
    public Long d;
    public Long e;
    public Long f;
    public Long g;
    public Long h;
    public String i;
    public String j;
    public String k;
    public String l;
    public Integer m;
    public String n;
    public String o;
    public String p;
    public Long q;
    public Long r;
    public String s;
    public Boolean t;
    public String u;
    public Long v;
    public Integer w;
    public String x;
    public String y;
    public Boolean z;

    public wv() {
        c();
    }

    public static wv[] a() {
        if (B == null) {
            synchronized (xr.a) {
                if (B == null) {
                    B = new wv[0];
                }
            }
        }
        return B;
    }

    public wv a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            int b;
            Object obj;
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    b = xv.b(xmVar, 18);
                    a = this.b == null ? 0 : this.b.length;
                    obj = new ws[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.b, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new ws();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new ws();
                    xmVar.a(obj[a]);
                    this.b = obj;
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    b = xv.b(xmVar, 26);
                    a = this.c == null ? 0 : this.c.length;
                    obj = new wx[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wx();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wx();
                    xmVar.a(obj[a]);
                    this.c = obj;
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    this.d = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                    this.e = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_homeAsUpIndicator /*48*/:
                    this.f = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_dividerHorizontal /*56*/:
                    this.h = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                    this.i = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_dropDownListViewStyle /*74*/:
                    this.j = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_colorPrimary /*82*/:
                    this.k = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_controlBackground /*90*/:
                    this.l = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_buttonBarPositiveButtonStyle /*96*/:
                    this.m = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.AppCompatTheme_ratingBarStyle /*106*/:
                    this.n = xmVar.h();
                    continue;
                case 114:
                    this.o = xmVar.h();
                    continue;
                case 130:
                    this.p = xmVar.h();
                    continue;
                case 136:
                    this.q = Long.valueOf(xmVar.e());
                    continue;
                case 144:
                    this.r = Long.valueOf(xmVar.e());
                    continue;
                case 154:
                    this.s = xmVar.h();
                    continue;
                case 160:
                    this.t = Boolean.valueOf(xmVar.g());
                    continue;
                case 170:
                    this.u = xmVar.h();
                    continue;
                case 176:
                    this.v = Long.valueOf(xmVar.e());
                    continue;
                case 184:
                    this.w = Integer.valueOf(xmVar.f());
                    continue;
                case 194:
                    this.x = xmVar.h();
                    continue;
                case 202:
                    this.y = xmVar.h();
                    continue;
                case 208:
                    this.g = Long.valueOf(xmVar.e());
                    continue;
                case PsExtractor.VIDEO_STREAM /*224*/:
                    this.z = Boolean.valueOf(xmVar.g());
                    continue;
                case 234:
                    b = xv.b(xmVar, 234);
                    a = this.A == null ? 0 : this.A.length;
                    obj = new wr[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.A, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wr();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wr();
                    xmVar.a(obj[a]);
                    this.A = obj;
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
        int i = 0;
        if (this.a != null) {
            com_google_android_gms_internal_zzsn.a(1, this.a.intValue());
        }
        if (this.b != null && this.b.length > 0) {
            for (xs xsVar : this.b) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(2, xsVar);
                }
            }
        }
        if (this.c != null && this.c.length > 0) {
            for (xs xsVar2 : this.c) {
                if (xsVar2 != null) {
                    com_google_android_gms_internal_zzsn.a(3, xsVar2);
                }
            }
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
        if (this.h != null) {
            com_google_android_gms_internal_zzsn.b(7, this.h.longValue());
        }
        if (this.i != null) {
            com_google_android_gms_internal_zzsn.a(8, this.i);
        }
        if (this.j != null) {
            com_google_android_gms_internal_zzsn.a(9, this.j);
        }
        if (this.k != null) {
            com_google_android_gms_internal_zzsn.a(10, this.k);
        }
        if (this.l != null) {
            com_google_android_gms_internal_zzsn.a(11, this.l);
        }
        if (this.m != null) {
            com_google_android_gms_internal_zzsn.a(12, this.m.intValue());
        }
        if (this.n != null) {
            com_google_android_gms_internal_zzsn.a(13, this.n);
        }
        if (this.o != null) {
            com_google_android_gms_internal_zzsn.a(14, this.o);
        }
        if (this.p != null) {
            com_google_android_gms_internal_zzsn.a(16, this.p);
        }
        if (this.q != null) {
            com_google_android_gms_internal_zzsn.b(17, this.q.longValue());
        }
        if (this.r != null) {
            com_google_android_gms_internal_zzsn.b(18, this.r.longValue());
        }
        if (this.s != null) {
            com_google_android_gms_internal_zzsn.a(19, this.s);
        }
        if (this.t != null) {
            com_google_android_gms_internal_zzsn.a(20, this.t.booleanValue());
        }
        if (this.u != null) {
            com_google_android_gms_internal_zzsn.a(21, this.u);
        }
        if (this.v != null) {
            com_google_android_gms_internal_zzsn.b(22, this.v.longValue());
        }
        if (this.w != null) {
            com_google_android_gms_internal_zzsn.a(23, this.w.intValue());
        }
        if (this.x != null) {
            com_google_android_gms_internal_zzsn.a(24, this.x);
        }
        if (this.y != null) {
            com_google_android_gms_internal_zzsn.a(25, this.y);
        }
        if (this.g != null) {
            com_google_android_gms_internal_zzsn.b(26, this.g.longValue());
        }
        if (this.z != null) {
            com_google_android_gms_internal_zzsn.a(28, this.z.booleanValue());
        }
        if (this.A != null && this.A.length > 0) {
            while (i < this.A.length) {
                xs xsVar3 = this.A[i];
                if (xsVar3 != null) {
                    com_google_android_gms_internal_zzsn.a(29, xsVar3);
                }
                i++;
            }
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i;
        int i2 = 0;
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null && this.b.length > 0) {
            i = b;
            for (xs xsVar : this.b) {
                if (xsVar != null) {
                    i += zzsn.c(2, xsVar);
                }
            }
            b = i;
        }
        if (this.c != null && this.c.length > 0) {
            i = b;
            for (xs xsVar2 : this.c) {
                if (xsVar2 != null) {
                    i += zzsn.c(3, xsVar2);
                }
            }
            b = i;
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
        if (this.h != null) {
            b += zzsn.d(7, this.h.longValue());
        }
        if (this.i != null) {
            b += zzsn.b(8, this.i);
        }
        if (this.j != null) {
            b += zzsn.b(9, this.j);
        }
        if (this.k != null) {
            b += zzsn.b(10, this.k);
        }
        if (this.l != null) {
            b += zzsn.b(11, this.l);
        }
        if (this.m != null) {
            b += zzsn.b(12, this.m.intValue());
        }
        if (this.n != null) {
            b += zzsn.b(13, this.n);
        }
        if (this.o != null) {
            b += zzsn.b(14, this.o);
        }
        if (this.p != null) {
            b += zzsn.b(16, this.p);
        }
        if (this.q != null) {
            b += zzsn.d(17, this.q.longValue());
        }
        if (this.r != null) {
            b += zzsn.d(18, this.r.longValue());
        }
        if (this.s != null) {
            b += zzsn.b(19, this.s);
        }
        if (this.t != null) {
            b += zzsn.b(20, this.t.booleanValue());
        }
        if (this.u != null) {
            b += zzsn.b(21, this.u);
        }
        if (this.v != null) {
            b += zzsn.d(22, this.v.longValue());
        }
        if (this.w != null) {
            b += zzsn.b(23, this.w.intValue());
        }
        if (this.x != null) {
            b += zzsn.b(24, this.x);
        }
        if (this.y != null) {
            b += zzsn.b(25, this.y);
        }
        if (this.g != null) {
            b += zzsn.d(26, this.g.longValue());
        }
        if (this.z != null) {
            b += zzsn.b(28, this.z.booleanValue());
        }
        if (this.A != null && this.A.length > 0) {
            while (i2 < this.A.length) {
                xs xsVar3 = this.A[i2];
                if (xsVar3 != null) {
                    b += zzsn.c(29, xsVar3);
                }
                i2++;
            }
        }
        return b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wv c() {
        this.a = null;
        this.b = ws.a();
        this.c = wx.a();
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
        this.A = wr.a();
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wv)) {
            return false;
        }
        wv wvVar = (wv) obj;
        if (this.a == null) {
            if (wvVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wvVar.a)) {
            return false;
        }
        if (!xr.a(this.b, wvVar.b)) {
            return false;
        }
        if (!xr.a(this.c, wvVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (wvVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(wvVar.d)) {
            return false;
        }
        if (this.e == null) {
            if (wvVar.e != null) {
                return false;
            }
        } else if (!this.e.equals(wvVar.e)) {
            return false;
        }
        if (this.f == null) {
            if (wvVar.f != null) {
                return false;
            }
        } else if (!this.f.equals(wvVar.f)) {
            return false;
        }
        if (this.g == null) {
            if (wvVar.g != null) {
                return false;
            }
        } else if (!this.g.equals(wvVar.g)) {
            return false;
        }
        if (this.h == null) {
            if (wvVar.h != null) {
                return false;
            }
        } else if (!this.h.equals(wvVar.h)) {
            return false;
        }
        if (this.i == null) {
            if (wvVar.i != null) {
                return false;
            }
        } else if (!this.i.equals(wvVar.i)) {
            return false;
        }
        if (this.j == null) {
            if (wvVar.j != null) {
                return false;
            }
        } else if (!this.j.equals(wvVar.j)) {
            return false;
        }
        if (this.k == null) {
            if (wvVar.k != null) {
                return false;
            }
        } else if (!this.k.equals(wvVar.k)) {
            return false;
        }
        if (this.l == null) {
            if (wvVar.l != null) {
                return false;
            }
        } else if (!this.l.equals(wvVar.l)) {
            return false;
        }
        if (this.m == null) {
            if (wvVar.m != null) {
                return false;
            }
        } else if (!this.m.equals(wvVar.m)) {
            return false;
        }
        if (this.n == null) {
            if (wvVar.n != null) {
                return false;
            }
        } else if (!this.n.equals(wvVar.n)) {
            return false;
        }
        if (this.o == null) {
            if (wvVar.o != null) {
                return false;
            }
        } else if (!this.o.equals(wvVar.o)) {
            return false;
        }
        if (this.p == null) {
            if (wvVar.p != null) {
                return false;
            }
        } else if (!this.p.equals(wvVar.p)) {
            return false;
        }
        if (this.q == null) {
            if (wvVar.q != null) {
                return false;
            }
        } else if (!this.q.equals(wvVar.q)) {
            return false;
        }
        if (this.r == null) {
            if (wvVar.r != null) {
                return false;
            }
        } else if (!this.r.equals(wvVar.r)) {
            return false;
        }
        if (this.s == null) {
            if (wvVar.s != null) {
                return false;
            }
        } else if (!this.s.equals(wvVar.s)) {
            return false;
        }
        if (this.t == null) {
            if (wvVar.t != null) {
                return false;
            }
        } else if (!this.t.equals(wvVar.t)) {
            return false;
        }
        if (this.u == null) {
            if (wvVar.u != null) {
                return false;
            }
        } else if (!this.u.equals(wvVar.u)) {
            return false;
        }
        if (this.v == null) {
            if (wvVar.v != null) {
                return false;
            }
        } else if (!this.v.equals(wvVar.v)) {
            return false;
        }
        if (this.w == null) {
            if (wvVar.w != null) {
                return false;
            }
        } else if (!this.w.equals(wvVar.w)) {
            return false;
        }
        if (this.x == null) {
            if (wvVar.x != null) {
                return false;
            }
        } else if (!this.x.equals(wvVar.x)) {
            return false;
        }
        if (this.y == null) {
            if (wvVar.y != null) {
                return false;
            }
        } else if (!this.y.equals(wvVar.y)) {
            return false;
        }
        if (this.z == null) {
            if (wvVar.z != null) {
                return false;
            }
        } else if (!this.z.equals(wvVar.z)) {
            return false;
        }
        return xr.a(this.A, wvVar.A);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.y == null ? 0 : this.y.hashCode()) + (((this.x == null ? 0 : this.x.hashCode()) + (((this.w == null ? 0 : this.w.hashCode()) + (((this.v == null ? 0 : this.v.hashCode()) + (((this.u == null ? 0 : this.u.hashCode()) + (((this.t == null ? 0 : this.t.hashCode()) + (((this.s == null ? 0 : this.s.hashCode()) + (((this.r == null ? 0 : this.r.hashCode()) + (((this.q == null ? 0 : this.q.hashCode()) + (((this.p == null ? 0 : this.p.hashCode()) + (((this.o == null ? 0 : this.o.hashCode()) + (((this.n == null ? 0 : this.n.hashCode()) + (((this.m == null ? 0 : this.m.hashCode()) + (((this.l == null ? 0 : this.l.hashCode()) + (((this.k == null ? 0 : this.k.hashCode()) + (((this.j == null ? 0 : this.j.hashCode()) + (((this.i == null ? 0 : this.i.hashCode()) + (((this.h == null ? 0 : this.h.hashCode()) + (((this.g == null ? 0 : this.g.hashCode()) + (((this.f == null ? 0 : this.f.hashCode()) + (((this.e == null ? 0 : this.e.hashCode()) + (((this.d == null ? 0 : this.d.hashCode()) + (((((((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + xr.a(this.b)) * 31) + xr.a(this.c)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.z != null) {
            i = this.z.hashCode();
        }
        return ((hashCode + i) * 31) + xr.a(this.A);
    }
}
