package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

public final class wn extends xs {
    private static volatile wn[] c;
    public String a;
    public Boolean b;

    public wn() {
        c();
    }

    public static wn[] a() {
        if (c == null) {
            synchronized (xr.a) {
                if (c == null) {
                    c = new wn[0];
                }
            }
        }
        return c;
    }

    public wn a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    this.a = xmVar.h();
                    continue;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    this.b = Boolean.valueOf(xmVar.g());
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
            com_google_android_gms_internal_zzsn.a(2, this.b.booleanValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a);
        }
        return this.b != null ? b + zzsn.b(2, this.b.booleanValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wn c() {
        this.a = null;
        this.b = null;
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wn)) {
            return false;
        }
        wn wnVar = (wn) obj;
        if (this.a == null) {
            if (wnVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wnVar.a)) {
            return false;
        }
        return this.b == null ? wnVar.b == null : this.b.equals(wnVar.b);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31;
        if (this.b != null) {
            i = this.b.hashCode();
        }
        return hashCode + i;
    }
}
