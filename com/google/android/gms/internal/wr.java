package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wr extends xs {
    private static volatile wr[] e;
    public Integer a;
    public ww b;
    public ww c;
    public Boolean d;

    public wr() {
        c();
    }

    public static wr[] a() {
        if (e == null) {
            synchronized (xr.a) {
                if (e == null) {
                    e = new wr[0];
                }
            }
        }
        return e;
    }

    public wr a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    if (this.b == null) {
                        this.b = new ww();
                    }
                    xmVar.a(this.b);
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    if (this.c == null) {
                        this.c = new ww();
                    }
                    xmVar.a(this.c);
                    continue;
                case bdd.AppCompatTheme_actionModeCutDrawable /*32*/:
                    this.d = Boolean.valueOf(xmVar.g());
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
            com_google_android_gms_internal_zzsn.a(1, this.a.intValue());
        }
        if (this.b != null) {
            com_google_android_gms_internal_zzsn.a(2, this.b);
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(3, this.c);
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.a(4, this.d.booleanValue());
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null) {
            b += zzsn.c(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.c(3, this.c);
        }
        return this.d != null ? b + zzsn.b(4, this.d.booleanValue()) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wr c() {
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
        if (!(obj instanceof wr)) {
            return false;
        }
        wr wrVar = (wr) obj;
        if (this.a == null) {
            if (wrVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wrVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wrVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wrVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wrVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wrVar.c)) {
            return false;
        }
        return this.d == null ? wrVar.d == null : this.d.equals(wrVar.d);
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
