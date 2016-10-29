package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class ws extends xs {
    private static volatile ws[] f;
    public wt[] a;
    public String b;
    public Long c;
    public Long d;
    public Integer e;

    public ws() {
        c();
    }

    public static ws[] a() {
        if (f == null) {
            synchronized (xr.a) {
                if (f == null) {
                    f = new ws[0];
                }
            }
        }
        return f;
    }

    public ws a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    int b = xv.b(xmVar, 10);
                    a = this.a == null ? 0 : this.a.length;
                    Object obj = new wt[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.a, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wt();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wt();
                    xmVar.a(obj[a]);
                    this.a = obj;
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.c = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    this.d = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_textAppearanceLargePopupMenu /*40*/:
                    this.e = Integer.valueOf(xmVar.f());
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
        if (this.a != null && this.a.length > 0) {
            for (xs xsVar : this.a) {
                if (xsVar != null) {
                    com_google_android_gms_internal_zzsn.a(1, xsVar);
                }
            }
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
            com_google_android_gms_internal_zzsn.a(5, this.e.intValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null && this.a.length > 0) {
            for (xs xsVar : this.a) {
                if (xsVar != null) {
                    b += zzsn.c(1, xsVar);
                }
            }
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
        return this.e != null ? b + zzsn.b(5, this.e.intValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public ws c() {
        this.a = wt.a();
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ws)) {
            return false;
        }
        ws wsVar = (ws) obj;
        if (!xr.a(this.a, wsVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wsVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wsVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wsVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wsVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (wsVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(wsVar.d)) {
            return false;
        }
        return this.e == null ? wsVar.e == null : this.e.equals(wsVar.e);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d == null ? 0 : this.d.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + ((((getClass().getName().hashCode() + 527) * 31) + xr.a(this.a)) * 31)) * 31)) * 31)) * 31;
        if (this.e != null) {
            i = this.e.hashCode();
        }
        return hashCode + i;
    }
}
