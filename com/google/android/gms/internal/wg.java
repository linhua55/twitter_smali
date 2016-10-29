package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wg extends xs {
    private static volatile wg[] d;
    public Integer a;
    public wk[] b;
    public wh[] c;

    public wg() {
        c();
    }

    public static wg[] a() {
        if (d == null) {
            synchronized (xr.a) {
                if (d == null) {
                    d = new wg[0];
                }
            }
        }
        return d;
    }

    public wg a(xm xmVar) throws IOException {
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
                    obj = new wk[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.b, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wk();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wk();
                    xmVar.a(obj[a]);
                    this.b = obj;
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    b = xv.b(xmVar, 26);
                    a = this.c == null ? 0 : this.c.length;
                    obj = new wh[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wh();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wh();
                    xmVar.a(obj[a]);
                    this.c = obj;
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
            while (i < this.c.length) {
                xs xsVar2 = this.c[i];
                if (xsVar2 != null) {
                    com_google_android_gms_internal_zzsn.a(3, xsVar2);
                }
                i++;
            }
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i = 0;
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null && this.b.length > 0) {
            int i2 = b;
            for (xs xsVar : this.b) {
                if (xsVar != null) {
                    i2 += zzsn.c(2, xsVar);
                }
            }
            b = i2;
        }
        if (this.c != null && this.c.length > 0) {
            while (i < this.c.length) {
                xs xsVar2 = this.c[i];
                if (xsVar2 != null) {
                    b += zzsn.c(3, xsVar2);
                }
                i++;
            }
        }
        return b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wg c() {
        this.a = null;
        this.b = wk.a();
        this.c = wh.a();
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wg)) {
            return false;
        }
        wg wgVar = (wg) obj;
        if (this.a == null) {
            if (wgVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wgVar.a)) {
            return false;
        }
        return !xr.a(this.b, wgVar.b) ? false : xr.a(this.c, wgVar.c);
    }

    public int hashCode() {
        return (((((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31) + xr.a(this.b)) * 31) + xr.a(this.c);
    }
}
