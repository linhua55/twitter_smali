package com.google.android.gms.internal;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.io.IOException;

public final class wj extends xs {
    public Integer a;
    public Boolean b;
    public String c;
    public String d;
    public String e;

    public wj() {
        a();
    }

    public wj a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
        this.e = null;
        this.S = -1;
        return this;
    }

    public wj a(xm xmVar) throws IOException {
        while (true) {
            int a = xmVar.a();
            switch (a) {
                case Util.TYPE_DASH /*0*/:
                    break;
                case ChunkHeader.SIZE_IN_BYTES /*8*/:
                    a = xmVar.f();
                    switch (a) {
                        case Util.TYPE_DASH /*0*/:
                        case ModuleDescriptor.MODULE_VERSION /*1*/:
                        case Buffer.FLAG_DECODE_ONLY /*2*/:
                        case Util.TYPE_OTHER /*3*/:
                        case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                            this.a = Integer.valueOf(a);
                            break;
                        default:
                            continue;
                    }
                case Atom.LONG_HEADER_SIZE /*16*/:
                    this.b = Boolean.valueOf(xmVar.g());
                    continue;
                case bdd.TweetView_previewFlags /*26*/:
                    this.c = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    this.d = xmVar.h();
                    continue;
                case bdd.AppCompatTheme_dialogTheme /*42*/:
                    this.e = xmVar.h();
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
            com_google_android_gms_internal_zzsn.a(2, this.b.booleanValue());
        }
        if (this.c != null) {
            com_google_android_gms_internal_zzsn.a(3, this.c);
        }
        if (this.d != null) {
            com_google_android_gms_internal_zzsn.a(4, this.d);
        }
        if (this.e != null) {
            com_google_android_gms_internal_zzsn.a(5, this.e);
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b.booleanValue());
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c);
        }
        if (this.d != null) {
            b += zzsn.b(4, this.d);
        }
        return this.e != null ? b + zzsn.b(5, this.e) : b;
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wj)) {
            return false;
        }
        wj wjVar = (wj) obj;
        if (this.a == null) {
            if (wjVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wjVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wjVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wjVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wjVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wjVar.c)) {
            return false;
        }
        if (this.d == null) {
            if (wjVar.d != null) {
                return false;
            }
        } else if (!this.d.equals(wjVar.d)) {
            return false;
        }
        return this.e == null ? wjVar.e == null : this.e.equals(wjVar.e);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.d == null ? 0 : this.d.hashCode()) + (((this.c == null ? 0 : this.c.hashCode()) + (((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31)) * 31)) * 31;
        if (this.e != null) {
            i = this.e.hashCode();
        }
        return hashCode + i;
    }
}
