package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.io.IOException;
import java.util.Arrays;

public final class ya extends xn<ya> {
    public long b;
    public long c;
    public long d;
    public String e;
    public int f;
    public int g;
    public boolean h;
    public yb[] i;
    public xy j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public xx n;
    public String o;
    public long p;
    public xz q;
    public byte[] r;
    public int s;
    public int[] t;
    public long u;

    public ya() {
        f();
    }

    public ya a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            int b;
            Object obj;
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.b = xmVar.e();
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.e = xmVar.h();
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    b = xv.b(xmVar, 26);
                    a = this.i == null ? 0 : this.i.length;
                    obj = new yb[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.i, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new yb();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new yb();
                    xmVar.a(obj[a]);
                    this.i = obj;
                    continue;
                case bdd.AppCompatTheme_buttonBarStyle /*50*/:
                    this.k = xmVar.i();
                    continue;
                case bdd.AppCompatTheme_toolbarStyle /*58*/:
                    if (this.n == null) {
                        this.n = new xx();
                    }
                    xmVar.a(this.n);
                    continue;
                case bdd.AppCompatTheme_textAppearanceSearchResultSubtitle /*66*/:
                    this.l = xmVar.i();
                    continue;
                case bdd.AppCompatTheme_dropDownListViewStyle /*74*/:
                    if (this.j == null) {
                        this.j = new xy();
                    }
                    xmVar.a(this.j);
                    continue;
                case bdd.AppCompatTheme_panelMenuListTheme /*80*/:
                    this.h = xmVar.g();
                    continue;
                case bdd.AppCompatTheme_colorButtonNormal /*88*/:
                    this.f = xmVar.f();
                    continue;
                case bdd.AppCompatTheme_buttonBarPositiveButtonStyle /*96*/:
                    this.g = xmVar.f();
                    continue;
                case bdd.AppCompatTheme_ratingBarStyle /*106*/:
                    this.m = xmVar.i();
                    continue;
                case 114:
                    this.o = xmVar.h();
                    continue;
                case 120:
                    this.p = xmVar.j();
                    continue;
                case 130:
                    if (this.q == null) {
                        this.q = new xz();
                    }
                    xmVar.a(this.q);
                    continue;
                case 136:
                    this.c = xmVar.e();
                    continue;
                case 146:
                    this.r = xmVar.i();
                    continue;
                case 152:
                    a = xmVar.f();
                    switch (a) {
                        case Util.TYPE_DASH /*0*/:
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                            this.s = a;
                            break;
                        default:
                            continue;
                    }
                case 160:
                    b = xv.b(xmVar, 160);
                    a = this.t == null ? 0 : this.t.length;
                    obj = new int[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.t, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.f();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.f();
                    this.t = obj;
                    continue;
                case 162:
                    int c = xmVar.c(xmVar.k());
                    b = xmVar.q();
                    a = 0;
                    while (xmVar.o() > 0) {
                        xmVar.f();
                        a++;
                    }
                    xmVar.e(b);
                    b = this.t == null ? 0 : this.t.length;
                    Object obj2 = new int[(a + b)];
                    if (b != 0) {
                        System.arraycopy(this.t, 0, obj2, 0, b);
                    }
                    while (b < obj2.length) {
                        obj2[b] = xmVar.f();
                        b++;
                    }
                    this.t = obj2;
                    xmVar.d(c);
                    continue;
                case 168:
                    this.d = xmVar.e();
                    continue;
                case 176:
                    this.u = xmVar.e();
                    continue;
                default:
                    if (!a(xmVar, a)) {
                        break;
                    }
                    continue;
            }
            return this;
        }
    }

    public void a(zzsn com_google_android_gms_internal_zzsn) throws IOException {
        int i = 0;
        if (this.b != 0) {
            com_google_android_gms_internal_zzsn.b(1, this.b);
        }
        if (!this.e.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(2, this.e);
        }
        if (this.i != null && this.i.length > 0) {
            for (xs xsVar : this.i) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(3, xsVar);
                }
            }
        }
        if (!Arrays.equals(this.k, xv.h)) {
            com_google_android_gms_internal_zzsn.a(6, this.k);
        }
        if (this.n != null) {
            com_google_android_gms_internal_zzsn.a(7, this.n);
        }
        if (!Arrays.equals(this.l, xv.h)) {
            com_google_android_gms_internal_zzsn.a(8, this.l);
        }
        if (this.j != null) {
            com_google_android_gms_internal_zzsn.a(9, this.j);
        }
        if (this.h) {
            com_google_android_gms_internal_zzsn.a(10, this.h);
        }
        if (this.f != 0) {
            com_google_android_gms_internal_zzsn.a(11, this.f);
        }
        if (this.g != 0) {
            com_google_android_gms_internal_zzsn.a(12, this.g);
        }
        if (!Arrays.equals(this.m, xv.h)) {
            com_google_android_gms_internal_zzsn.a(13, this.m);
        }
        if (!this.o.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(14, this.o);
        }
        if (this.p != 180000) {
            com_google_android_gms_internal_zzsn.c(15, this.p);
        }
        if (this.q != null) {
            com_google_android_gms_internal_zzsn.a(16, this.q);
        }
        if (this.c != 0) {
            com_google_android_gms_internal_zzsn.b(17, this.c);
        }
        if (!Arrays.equals(this.r, xv.h)) {
            com_google_android_gms_internal_zzsn.a(18, this.r);
        }
        if (this.s != 0) {
            com_google_android_gms_internal_zzsn.a(19, this.s);
        }
        if (this.t != null && this.t.length > 0) {
            while (i < this.t.length) {
                com_google_android_gms_internal_zzsn.a(20, this.t[i]);
                i++;
            }
        }
        if (this.d != 0) {
            com_google_android_gms_internal_zzsn.b(21, this.d);
        }
        if (this.u != 0) {
            com_google_android_gms_internal_zzsn.b(22, this.u);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i;
        int i2 = 0;
        int b = super.b();
        if (this.b != 0) {
            b += zzsn.d(1, this.b);
        }
        if (!this.e.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            b += zzsn.b(2, this.e);
        }
        if (this.i != null && this.i.length > 0) {
            i = b;
            for (xs xsVar : this.i) {
                if (xsVar != null) {
                    i += zzsn.c(3, xsVar);
                }
            }
            b = i;
        }
        if (!Arrays.equals(this.k, xv.h)) {
            b += zzsn.b(6, this.k);
        }
        if (this.n != null) {
            b += zzsn.c(7, this.n);
        }
        if (!Arrays.equals(this.l, xv.h)) {
            b += zzsn.b(8, this.l);
        }
        if (this.j != null) {
            b += zzsn.c(9, this.j);
        }
        if (this.h) {
            b += zzsn.b(10, this.h);
        }
        if (this.f != 0) {
            b += zzsn.b(11, this.f);
        }
        if (this.g != 0) {
            b += zzsn.b(12, this.g);
        }
        if (!Arrays.equals(this.m, xv.h)) {
            b += zzsn.b(13, this.m);
        }
        if (!this.o.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            b += zzsn.b(14, this.o);
        }
        if (this.p != 180000) {
            b += zzsn.e(15, this.p);
        }
        if (this.q != null) {
            b += zzsn.c(16, this.q);
        }
        if (this.c != 0) {
            b += zzsn.d(17, this.c);
        }
        if (!Arrays.equals(this.r, xv.h)) {
            b += zzsn.b(18, this.r);
        }
        if (this.s != 0) {
            b += zzsn.b(19, this.s);
        }
        if (this.t != null && this.t.length > 0) {
            i = 0;
            while (i2 < this.t.length) {
                i += zzsn.b(this.t[i2]);
                i2++;
            }
            b = (b + i) + (this.t.length * 2);
        }
        if (this.d != 0) {
            b += zzsn.d(21, this.d);
        }
        return this.u != 0 ? b + zzsn.d(22, this.u) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ya)) {
            return false;
        }
        ya yaVar = (ya) obj;
        if (this.b != yaVar.b || this.c != yaVar.c || this.d != yaVar.d) {
            return false;
        }
        if (this.e == null) {
            if (yaVar.e != null) {
                return false;
            }
        } else if (!this.e.equals(yaVar.e)) {
            return false;
        }
        if (this.f != yaVar.f || this.g != yaVar.g || this.h != yaVar.h || !xr.a(this.i, yaVar.i)) {
            return false;
        }
        if (this.j == null) {
            if (yaVar.j != null) {
                return false;
            }
        } else if (!this.j.equals(yaVar.j)) {
            return false;
        }
        if (!Arrays.equals(this.k, yaVar.k) || !Arrays.equals(this.l, yaVar.l) || !Arrays.equals(this.m, yaVar.m)) {
            return false;
        }
        if (this.n == null) {
            if (yaVar.n != null) {
                return false;
            }
        } else if (!this.n.equals(yaVar.n)) {
            return false;
        }
        if (this.o == null) {
            if (yaVar.o != null) {
                return false;
            }
        } else if (!this.o.equals(yaVar.o)) {
            return false;
        }
        if (this.p != yaVar.p) {
            return false;
        }
        if (this.q == null) {
            if (yaVar.q != null) {
                return false;
            }
        } else if (!this.q.equals(yaVar.q)) {
            return false;
        }
        return (Arrays.equals(this.r, yaVar.r) && this.s == yaVar.s && xr.a(this.t, yaVar.t) && this.u == yaVar.u) ? (this.a == null || this.a.b()) ? yaVar.a == null || yaVar.a.b() : this.a.equals(yaVar.a) : false;
    }

    public ya f() {
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = TtmlNode.ANONYMOUS_REGION_ID;
        this.f = 0;
        this.g = 0;
        this.h = false;
        this.i = yb.f();
        this.j = null;
        this.k = xv.h;
        this.l = xv.h;
        this.m = xv.h;
        this.n = null;
        this.o = TtmlNode.ANONYMOUS_REGION_ID;
        this.p = 180000;
        this.q = null;
        this.r = xv.h;
        this.s = 0;
        this.t = xv.a;
        this.u = 0;
        this.a = null;
        this.S = -1;
        return this;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((((((((((this.q == null ? 0 : this.q.hashCode()) + (((((this.o == null ? 0 : this.o.hashCode()) + (((this.n == null ? 0 : this.n.hashCode()) + (((((((((this.j == null ? 0 : this.j.hashCode()) + (((((this.h ? 1231 : 1237) + (((((((this.e == null ? 0 : this.e.hashCode()) + ((((((((getClass().getName().hashCode() + 527) * 31) + ((int) (this.b ^ (this.b >>> 32)))) * 31) + ((int) (this.c ^ (this.c >>> 32)))) * 31) + ((int) (this.d ^ (this.d >>> 32)))) * 31)) * 31) + this.f) * 31) + this.g) * 31)) * 31) + xr.a(this.i)) * 31)) * 31) + Arrays.hashCode(this.k)) * 31) + Arrays.hashCode(this.l)) * 31) + Arrays.hashCode(this.m)) * 31)) * 31)) * 31) + ((int) (this.p ^ (this.p >>> 32)))) * 31)) * 31) + Arrays.hashCode(this.r)) * 31) + this.s) * 31) + xr.a(this.t)) * 31) + ((int) (this.u ^ (this.u >>> 32)))) * 31;
        if (!(this.a == null || this.a.b())) {
            i = this.a.hashCode();
        }
        return hashCode + i;
    }
}
