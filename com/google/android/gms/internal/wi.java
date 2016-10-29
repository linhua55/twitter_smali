package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wi extends xs {
    private static volatile wi[] e;
    public wl a;
    public wj b;
    public Boolean c;
    public String d;

    public wi() {
        c();
    }

    public static wi[] a() {
        if (e == null) {
            synchronized (xr.a) {
                if (e == null) {
                    e = new wi[0];
                }
            }
        }
        return e;
    }

    public wi a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    if (this.a == null) {
                        this.a = new wl();
                    }
                    xmVar.a(this.a);
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    if (this.b == null) {
                        this.b = new wj();
                    }
                    xmVar.a(this.b);
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.c = Boolean.valueOf(xmVar.g());
                    continue;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    this.d = xmVar.h();
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
            com_google_android_gms_internal_zzsn.a(3, this.c.booleanValue());
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.a(4, this.d);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.c(1, this.a);
        }
        if (this.b != null) {
            b += zzsn.c(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c.booleanValue());
        }
        return this.d != null ? b + zzsn.b(4, this.d) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wi c() {
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
        if (!(obj instanceof wi)) {
            return false;
        }
        wi wiVar = (wi) obj;
        if (this.a == null) {
            if (wiVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wiVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wiVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wiVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wiVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wiVar.c)) {
            return false;
        }
        return this.d == null ? wiVar.d == null : this.d.equals(wiVar.d);
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
