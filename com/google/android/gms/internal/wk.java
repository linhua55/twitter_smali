package com.google.android.gms.internal;

import com.google.android.exoplayer.util.Util;
import defpackage.bdd;
import java.io.IOException;

public final class wk extends xs {
    private static volatile wk[] d;
    public Integer a;
    public String b;
    public wi c;

    public wk() {
        c();
    }

    public static wk[] a() {
        if (d == null) {
            synchronized (xr.a) {
                if (d == null) {
                    d = new wk[0];
                }
            }
        }
        return d;
    }

    public wk a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    this.a = Integer.valueOf(xmVar.f());
                    continue;
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    if (this.c == null) {
                        this.c = new wi();
                    }
                    xmVar.a(this.c);
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
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        return this.c != null ? b + zzsn.c(3, this.c) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public wk c() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.S = -1;
        return this;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wk)) {
            return false;
        }
        wk wkVar = (wk) obj;
        if (this.a == null) {
            if (wkVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wkVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wkVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wkVar.b)) {
            return false;
        }
        return this.c == null ? wkVar.c == null : this.c.equals(wkVar.c);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.hashCode()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return hashCode + i;
    }
}
