package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wt extends xs {
    private static volatile wt[] e;
    public String a;
    public String b;
    public Long c;
    public Float d;

    public wt() {
        c();
    }

    public static wt[] a() {
        if (e == null) {
            synchronized (xr.a) {
                if (e == null) {
                    e = new wt[0];
                }
            }
        }
        return e;
    }

    public wt a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    this.a = xmVar.h();
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.c = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_actionModeFindDrawable /*37*/:
                    this.d = Float.valueOf(xmVar.c());
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
            com_google_android_gms_internal_zzsn.a(4, this.d.floatValue());
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
        return this.d != null ? b + zzsn.b(4, this.d.floatValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wt c() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wt)) {
            return false;
        }
        wt wtVar = (wt) obj;
        if (this.a == null) {
            if (wtVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wtVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wtVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wtVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wtVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wtVar.c)) {
            return false;
        }
        return this.d == null ? wtVar.d == null : this.d.equals(wtVar.d);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31;
        if (this.d != null) {
            i = this.d.hashCode();
        }
        return hashCode + i;
    }
}
