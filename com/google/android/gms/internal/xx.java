package com.google.android.gms.internal;

import com.google.android.exoplayer.upstream.NetworkLock;
import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class xx extends xn<xx> {
    public String[] b;
    public String[] c;
    public int[] d;
    public long[] e;

    public xx() {
        f();
    }

    public xx a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            int b;
            Object obj;
            int c;
            Object obj2;
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case NetworkLock.DOWNLOAD_PRIORITY /*10*/:
                    b = xv.b(xmVar, 10);
                    a = this.b == null ? 0 : this.b.length;
                    obj = new String[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.b, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.h();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.h();
                    this.b = obj;
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    b = xv.b(xmVar, 18);
                    a = this.c == null ? 0 : this.c.length;
                    obj = new String[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.c, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.h();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.h();
                    this.c = obj;
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    b = xv.b(xmVar, 24);
                    a = this.d == null ? 0 : this.d.length;
                    obj = new int[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.d, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.f();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.f();
                    this.d = obj;
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    c = xmVar.c(xmVar.k());
                    b = xmVar.q();
                    a = 0;
                    while (xmVar.o() > 0) {
                        xmVar.f();
                        a++;
                    }
                    xmVar.e(b);
                    b = this.d == null ? 0 : this.d.length;
                    obj2 = new int[(a + b)];
                    if (b != 0) {
                        System.arraycopy(this.d, 0, obj2, 0, b);
                    }
                    while (b < obj2.length) {
                        obj2[b] = xmVar.f();
                        b++;
                    }
                    this.d = obj2;
                    xmVar.d(c);
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    b = xv.b(xmVar, 32);
                    a = this.e == null ? 0 : this.e.length;
                    obj = new long[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.e, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.e();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.e();
                    this.e = obj;
                    continue;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    c = xmVar.c(xmVar.k());
                    b = xmVar.q();
                    a = 0;
                    while (xmVar.o() > 0) {
                        xmVar.e();
                        a++;
                    }
                    xmVar.e(b);
                    b = this.e == null ? 0 : this.e.length;
                    obj2 = new long[(a + b)];
                    if (b != 0) {
                        System.arraycopy(this.e, 0, obj2, 0, b);
                    }
                    while (b < obj2.length) {
                        obj2[b] = xmVar.e();
                        b++;
                    }
                    this.e = obj2;
                    xmVar.d(c);
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
        int i = 0;
        if (this.b != null && this.b.length > 0) {
            for (String str : this.b) {
                if (str != null) {
                    com_google_android_gms_internal_zzsn.a(1, str);
                }
            }
        }
        if (this.c != null && this.c.length > 0) {
            for (String str2 : this.c) {
                if (str2 != null) {
                    com_google_android_gms_internal_zzsn.a(2, str2);
                }
            }
        }
        if (this.d != null && this.d.length > 0) {
            for (int a : this.d) {
                com_google_android_gms_internal_zzsn.a(3, a);
            }
        }
        if (this.e != null && this.e.length > 0) {
            while (i < this.e.length) {
                com_google_android_gms_internal_zzsn.b(4, this.e[i]);
                i++;
            }
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i;
        int i2;
        int i3;
        int i4 = 0;
        int b = super.b();
        if (this.b == null || this.b.length <= 0) {
            i = b;
        } else {
            i2 = 0;
            i3 = 0;
            for (String str : this.b) {
                if (str != null) {
                    i3++;
                    i2 += zzsn.b(str);
                }
            }
            i = (b + i2) + (i3 * 1);
        }
        if (this.c != null && this.c.length > 0) {
            i3 = 0;
            b = 0;
            for (String str2 : this.c) {
                if (str2 != null) {
                    b++;
                    i3 += zzsn.b(str2);
                }
            }
            i = (i + i3) + (b * 1);
        }
        if (this.d != null && this.d.length > 0) {
            i3 = 0;
            for (int b2 : this.d) {
                i3 += zzsn.b(b2);
            }
            i = (i + i3) + (this.d.length * 1);
        }
        if (this.e == null || this.e.length <= 0) {
            return i;
        }
        i2 = 0;
        while (i4 < this.e.length) {
            i2 += zzsn.e(this.e[i4]);
            i4++;
        }
        return (i + i2) + (this.e.length * 1);
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof xx)) {
            return false;
        }
        xx xxVar = (xx) obj;
        return (xr.a(this.b, xxVar.b) && xr.a(this.c, xxVar.c) && xr.a(this.d, xxVar.d) && xr.a(this.e, xxVar.e)) ? (this.a == null || this.a.b()) ? xxVar.a == null || xxVar.a.b() : this.a.equals(xxVar.a) : false;
    }

    public xx f() {
        this.b = xv.f;
        this.c = xv.f;
        this.d = xv.a;
        this.e = xv.b;
        this.a = null;
        this.S = -1;
        return this;
    }

    public int hashCode() {
        int hashCode = (((((((((getClass().getName().hashCode() + 527) * 31) + xr.a(this.b)) * 31) + xr.a(this.c)) * 31) + xr.a(this.d)) * 31) + xr.a(this.e)) * 31;
        int hashCode2 = (this.a == null || this.a.b()) ? 0 : this.a.hashCode();
        return hashCode2 + hashCode;
    }
}
