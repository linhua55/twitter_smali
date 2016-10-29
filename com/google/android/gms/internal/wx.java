package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wx extends xs {
    private static volatile wx[] f;
    public Long a;
    public String b;
    public String c;
    public Long d;
    public Float e;

    public wx() {
        c();
    }

    public static wx[] a() {
        if (f == null) {
            synchronized (xr.a) {
                if (f == null) {
                    f = new wx[0];
                }
            }
        }
        return f;
    }

    public wx a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Long.valueOf(xmVar.e());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    this.c = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    this.d = Long.valueOf(xmVar.e());
                    continue;
                case bdd.AppCompatTheme_actionDropDownStyle /*45*/:
                    this.e = Float.valueOf(xmVar.c());
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
            com_google_android_gms_internal_zzsn.b(1, this.a.longValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b);
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(3, this.c);
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.b(4, this.d.longValue());
        }
        if (this.e != null) {
            com_google_android_gms_internal_zzsn.a(5, this.e.floatValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.d(1, this.a.longValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c);
        }
        if (this.d != null) {
            b += zzsn.d(4, this.d.longValue());
        }
        return this.e != null ? b + zzsn.b(5, this.e.floatValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wx c() {
        this.a = null;
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
        if (!(obj instanceof wx)) {
            return false;
        }
        wx wxVar = (wx) obj;
        if (this.a == null) {
            if (wxVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wxVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wxVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wxVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wxVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wxVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (wxVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(wxVar.d)) {
            return false;
        }
        return this.e == null ? wxVar.e == null : this.e.equals(wxVar.e);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d == null ? 0 : this.d.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.e != null) {
            i = this.e.hashCode();
        }
        return hashCode + i;
    }
}
