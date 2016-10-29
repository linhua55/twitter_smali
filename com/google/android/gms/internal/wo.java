package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wo extends xs {
    public Long a;
    public String b;
    public Integer c;
    public wp[] d;
    public wn[] e;
    public wg[] f;

    public wo() {
        a();
    }

    public wo a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = wp.a();
        this.e = wn.a();
        this.f = wg.a();
        this.S = -1;
        return this;
    }

    public wo a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            int b;
            Object obj;
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Long.valueOf(xmVar.e());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.c = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    b = xv.b(xmVar, 34);
                    a = this.d == null ? 0 : this.d.length;
                    obj = new wp[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.d, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wp();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wp();
                    xmVar.a(obj[a]);
                    this.d = obj;
                    continue;
                case bdd.AppCompatTheme_dialogTheme /*42*/:
                    b = xv.b(xmVar, 42);
                    a = this.e == null ? 0 : this.e.length;
                    obj = new wn[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.e, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wn();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wn();
                    xmVar.a(obj[a]);
                    this.e = obj;
                    continue;
                case bdd.AppCompatTheme_buttonBarStyle /*50*/:
                    b = xv.b(xmVar, 50);
                    a = this.f == null ? 0 : this.f.length;
                    obj = new wg[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.f, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wg();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wg();
                    xmVar.a(obj[a]);
                    this.f = obj;
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
            com_google_android_gms_internal_zzsn.b(1, this.a.longValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b);
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(3, this.c.intValue());
        }
        if (this.d != null && this.d.length > 0) {
            for (xs xsVar : this.d) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(4, xsVar);
                }
            }
        }
        if (this.e != null && this.e.length > 0) {
            for (xs xsVar2 : this.e) {
                if (xsVar2 != null) {
                    com_google_android_gms_internal_zzsn.a(5, xsVar2);
                }
            }
        }
        if (this.f != null && this.f.length > 0) {
            while (i < this.f.length) {
                xs xsVar3 = this.f[i];
                if (xsVar3 != null) {
                    com_google_android_gms_internal_zzsn.a(6, xsVar3);
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
            b += zzsn.d(1, this.a.longValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c.intValue());
        }
        if (this.d != null && this.d.length > 0) {
            i = b;
            for (xs xsVar : this.d) {
                if (xsVar != null) {
                    i += zzsn.c(4, xsVar);
                }
            }
            b = i;
        }
        if (this.e != null && this.e.length > 0) {
            i = b;
            for (xs xsVar2 : this.e) {
                if (xsVar2 != null) {
                    i += zzsn.c(5, xsVar2);
                }
            }
            b = i;
        }
        if (this.f != null && this.f.length > 0) {
            while (i2 < this.f.length) {
                xs xsVar3 = this.f[i2];
                if (xsVar3 != null) {
                    b += zzsn.c(6, xsVar3);
                }
                i2++;
            }
        }
        return b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wo)) {
            return false;
        }
        wo woVar = (wo) obj;
        if (this.a == null) {
            if (woVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(woVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (woVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(woVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (woVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(woVar.c)) {
            return false;
        }
        return !xr.a(this.d, woVar.d) ? false : !xr.a(this.e, woVar.e) ? false : xr.a(this.f, woVar.f);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return ((((((hashCode + i) * 31) + xr.a(this.d)) * 31) + xr.a(this.e)) * 31) + xr.a(this.f);
    }
}
