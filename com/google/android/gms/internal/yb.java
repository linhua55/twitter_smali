package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class yb extends xn<yb> {
    private static volatile yb[] d;
    public String b;
    public String c;

    public yb() {
        g();
    }

    public static yb[] f() {
        if (d == null) {
            synchronized (xr.a) {
                if (d == null) {
                    d = new yb[0];
                }
            }
        }
        return d;
    }

    public yb a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.c = xmVar.h();
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
        if (!this.b.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(1, this.b);
        }
        if (!this.c.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            com_google_android_gms_internal_zzsn.a(2, this.c);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (!this.b.equals(TtmlNode.ANONYMOUS_REGION_ID)) {
            b += zzsn.b(1, this.b);
        }
        return !this.c.equals(TtmlNode.ANONYMOUS_REGION_ID) ? b + zzsn.b(2, this.c) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yb)) {
            return false;
        }
        yb ybVar = (yb) obj;
        if (this.b == null) {
            if (ybVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(ybVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (ybVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(ybVar.c)) {
            return false;
        }
        return (this.a == null || this.a.b()) ? ybVar.a == null || ybVar.a.b() : this.a.equals(ybVar.a);
    }

    public yb g() {
        this.b = TtmlNode.ANONYMOUS_REGION_ID;
        this.c = TtmlNode.ANONYMOUS_REGION_ID;
        this.a = null;
        this.S = -1;
        return this;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
        if (!(this.a == null || this.a.b())) {
            i = this.a.hashCode();
        }
        return hashCode + i;
    }
}
