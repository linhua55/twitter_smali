package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import java.io.IOException;

public final class wu extends xs {
    public wv[] a;

    public wu() {
        a();
    }

    public wu a() {
        this.a = wv.a();
        this.S = -1;
        return this;
    }

    public wu a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    int b = xv.b(xmVar, 10);
                    a = this.a == null ? 0 : this.a.length;
                    Object obj = new wv[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.a, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = new wv();
                        xmVar.a(obj[a]);
                        xmVar.a();
                        a++;
                    }
                    obj[a] = new wv();
                    xmVar.a(obj[a]);
                    this.a = obj;
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
        return b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wu)) {
            return false;
        }
        return xr.a(this.a, ((wu) obj).a);
    }

    public int hashCode() {
        return ((getClass().getName().hashCode() + 527) * 31) + xr.a(this.a);
    }
}
