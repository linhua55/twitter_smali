package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;
import java.util.Arrays;

public final class xz extends xn<xz> {
    public byte[] b;
    public byte[][] c;
    public boolean d;

    public xz() {
        f();
    }

    public xz a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    this.b = xmVar.i();
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    int b = xv.b(xmVar, 18);
                    a = this.c == null ? 0 : this.c.length;
                    Object obj = new byte[(b + a)][];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.i();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.i();
                    this.c = obj;
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.d = xmVar.g();
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
        if (!Arrays.equals(this.b, xv.h)) {
            com_google_android_gms_internal_zzsn.a(1, this.b);
        }
        if (this.c != null && this.c.length > 0) {
            for (byte[] bArr : this.c) {
                if (bArr != null) {
                    com_google_android_gms_internal_zzsn.a(2, bArr);
                }
            }
        }
        if (this.d) {
            com_google_android_gms_internal_zzsn.a(3, this.d);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i = 0;
        int b = super.b();
        if (!Arrays.equals(this.b, xv.h)) {
            b += zzsn.b(1, this.b);
        }
        if (this.c != null && this.c.length > 0) {
            int i2 = 0;
            int i3 = 0;
            while (i < this.c.length) {
                byte[] bArr = this.c[i];
                if (bArr != null) {
                    i3++;
                    i2 += zzsn.c(bArr);
                }
                i++;
            }
            b = (b + i2) + (i3 * 1);
        }
        return this.d ? b + zzsn.b(3, this.d) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xz)) {
            return false;
        }
        xz xzVar = (xz) obj;
        return (Arrays.equals(this.b, xzVar.b) && xr.a(this.c, xzVar.c) && this.d == xzVar.d) ? (this.a == null || this.a.b()) ? xzVar.a == null || xzVar.a.b() : this.a.equals(xzVar.a) : false;
    }

    public xz f() {
        this.b = xv.h;
        this.c = xv.g;
        this.d = false;
        this.a = null;
        this.S = -1;
        return this;
    }

    public int hashCode() {
        int hashCode = ((this.d ? 1231 : 1237) + ((((((getClass().getName().hashCode() + 527) * 31) + Arrays.hashCode(this.b)) * 31) + xr.a(this.c)) * 31)) * 31;
        int hashCode2 = (this.a == null || this.a.b()) ? 0 : this.a.hashCode();
        return hashCode2 + hashCode;
    }
}
