package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class ww extends xs {
    public long[] a;
    public long[] b;

    public ww() {
        a();
    }

    public ww a() {
        this.a = xv.b;
        this.b = xv.b;
        this.S = -1;
        return this;
    }

    public ww a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            int b;
            Object obj;
            int c;
            Object obj2;
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    b = xv.b(xmVar, 8);
                    a = this.a == null ? 0 : this.a.length;
                    obj = new long[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.a, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.d();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.d();
                    this.a = obj;
                    continue;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    c = xmVar.c(xmVar.k());
                    b = xmVar.q();
                    a = 0;
                    while (xmVar.o() > 0) {
                        xmVar.d();
                        a++;
                    }
                    xmVar.e(b);
                    b = this.a == null ? 0 : this.a.length;
                    obj2 = new long[(a + b)];
                    if (b != 0) {
                        System.arraycopy(this.a, 0, obj2, 0, b);
                    }
                    while (b < obj2.length) {
                        obj2[b] = xmVar.d();
                        b++;
                    }
                    this.a = obj2;
                    xmVar.d(c);
                    continue;
                case Atom.LONG_HEADER_SIZE /*16*/:
                    b = xv.b(xmVar, 16);
                    a = this.b == null ? 0 : this.b.length;
                    obj = new long[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.b, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.d();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.d();
                    this.b = obj;
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    c = xmVar.c(xmVar.k());
                    b = xmVar.q();
                    a = 0;
                    while (xmVar.o() > 0) {
                        xmVar.d();
                        a++;
                    }
                    xmVar.e(b);
                    b = this.b == null ? 0 : this.b.length;
                    obj2 = new long[(a + b)];
                    if (b != 0) {
                        System.arraycopy(this.b, 0, obj2, 0, b);
                    }
                    while (b < obj2.length) {
                        obj2[b] = xmVar.d();
                        b++;
                    }
                    this.b = obj2;
                    xmVar.d(c);
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
        if (this.a != null && this.a.length > 0) {
            for (long a : this.a) {
                com_google_android_gms_internal_zzsn.a(1, a);
            }
        }
        if (this.b != null && this.b.length > 0) {
            while (i < this.b.length) {
                com_google_android_gms_internal_zzsn.a(2, this.b[i]);
                i++;
            }
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i;
        int i2;
        int i3 = 0;
        int b = super.b();
        if (this.a == null || this.a.length <= 0) {
            i = b;
        } else {
            i2 = 0;
            for (long d : this.a) {
                i2 += zzsn.d(d);
            }
            i = (b + i2) + (this.a.length * 1);
        }
        if (this.b == null || this.b.length <= 0) {
            return i;
        }
        i2 = 0;
        while (i3 < this.b.length) {
            i2 += zzsn.d(this.b[i3]);
            i3++;
        }
        return (i + i2) + (this.b.length * 1);
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ww)) {
            return false;
        }
        ww wwVar = (ww) obj;
        return !xr.a(this.a, wwVar.a) ? false : xr.a(this.b, wwVar.b);
    }

    public int hashCode() {
        return ((((getClass().getName().hashCode() + 527) * 31) + xr.a(this.a)) * 31) + xr.a(this.b);
    }
}
