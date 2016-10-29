package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wh extends xs {
    private static volatile wh[] f;
    public Integer a;
    public String b;
    public wi[] c;
    public Boolean d;
    public wj e;

    public wh() {
        c();
    }

    public static wh[] a() {
        if (f == null) {
            synchronized (xr.a) {
                if (f == null) {
                    f = new wh[0];
                }
            }
        }
        return f;
    }

    public wh a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    int b = xv.b(xmVar, 26);
                    a = this.c == null ? 0 : this.c.length;
                    Object obj = new wi[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wi();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wi();
                    xmVar.a(obj[a]);
                    this.c = obj;
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    this.d = Boolean.valueOf(xmVar.g());
                    continue;
                case bdd.AppCompatTheme_dialogTheme /*42*/:
                    if (this.e == null) {
                        this.e = new wj();
                    }
                    xmVar.a(this.e);
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
            com_google_android_gms_internal_zzsn.a(1, this.a.intValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b);
        }
        if (this.c != null && this.c.length > 0) {
            for (xs xsVar : this.c) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(3, xsVar);
                }
            }
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.a(4, this.d.booleanValue());
        }
        if (this.e != null) {
            com_google_android_gms_internal_zzsn.a(5, this.e);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        if (this.c != null && this.c.length > 0) {
            int i = b;
            for (xs xsVar : this.c) {
                if (xsVar != null) {
                    i += zzsn.c(3, xsVar);
                }
            }
            b = i;
        }
        if (this.d != null) {
            b += zzsn.b(4, this.d.booleanValue());
        }
        return this.e != null ? b + zzsn.c(5, this.e) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wh c() {
        this.a = null;
        this.b = null;
        this.c = wi.a();
        this.d = null;
        this.e = null;
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wh)) {
            return false;
        }
        wh whVar = (wh) obj;
        if (this.a == null) {
            if (whVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(whVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (whVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(whVar.b)) {
            return false;
        }
        if (!xr.a(this.c, whVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (whVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(whVar.d)) {
            return false;
        }
        return this.e == null ? whVar.e == null : this.e.equals(whVar.e);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d == null ? 0 : this.d.hashCode()) + (((((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31) + xr.a(this.c)) * 31)) * 31;
        if (this.e != null) {
            i = this.e.hashCode();
        }
        return hashCode + i;
    }
}
