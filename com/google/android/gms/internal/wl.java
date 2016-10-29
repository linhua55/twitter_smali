package com.google.android.gms.internal;

import com.google.android.exoplayer.extractor.ExtractorSampleSource;
import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import defpackage.bdd;
import java.io.IOException;

public final class wl extends xs {
    public Integer a;
    public String b;
    public Boolean c;
    public String[] d;

    public wl() {
        a();
    }

    public wl a() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = xv.f;
        this.S = -1;
        return this;
    }

    public wl a(xm xmVar) throws IOException {
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
                        case EbmlReader.TYPE_FLOAT /*5*/:
                        case ExtractorSampleSource.DEFAULT_MIN_LOADABLE_RETRY_COUNT_LIVE /*6*/:
                            this.a = Integer.valueOf(a);
                            break;
                        default:
                            continue;
                    }
                case bdd.TwitterButton_knockout /*18*/:
                    this.b = xmVar.h();
                    continue;
                case bdd.TweetView_autoLink /*24*/:
                    this.c = Boolean.valueOf(xmVar.g());
                    continue;
                case bdd.AppCompatTheme_actionModePasteDrawable /*34*/:
                    int b = xv.b(xmVar, 34);
                    a = this.d == null ? 0 : this.d.length;
                    Object obj = new String[(b + a)];
                    if (a != 0) {
                        System.arraycopy(this.d, 0, obj, 0, a);
                    }
                    while (a < obj.length - 1) {
                        obj[a] = xmVar.h();
                        xmVar.a();
                        a++;
                    }
                    obj[a] = xmVar.h();
                    this.d = obj;
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
            com_google_android_gms_internal_zzsn.a(3, this.c.booleanValue());
        }
        if (this.d != null && this.d.length > 0) {
            for (String str : this.d) {
                if (str != null) {
                    com_google_android_gms_internal_zzsn.a(4, str);
                }
            }
        }
        super.a(com_google_android_gms_internal_zzsn);
    }

    protected int b() {
        int i = 0;
        int b = super.b();
        if (this.a != null) {
            b += zzsn.b(1, this.a.intValue());
        }
        if (this.b != null) {
            b += zzsn.b(2, this.b);
        }
        if (this.c != null) {
            b += zzsn.b(3, this.c.booleanValue());
        }
        if (this.d == null || this.d.length <= 0) {
            return b;
        }
        int i2 = 0;
        int i3 = 0;
        while (i < this.d.length) {
            String str = this.d[i];
            if (str != null) {
                i3++;
                i2 += zzsn.b(str);
            }
            i++;
        }
        return (b + i2) + (i3 * 1);
    }

    public /* synthetic */ xs b(xm xmVar) throws IOException {
        return a(xmVar);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wl)) {
            return false;
        }
        wl wlVar = (wl) obj;
        if (this.a == null) {
            if (wlVar.a != null) {
                return false;
            }
        } else if (!this.a.equals(wlVar.a)) {
            return false;
        }
        if (this.b == null) {
            if (wlVar.b != null) {
                return false;
            }
        } else if (!this.b.equals(wlVar.b)) {
            return false;
        }
        if (this.c == null) {
            if (wlVar.c != null) {
                return false;
            }
        } else if (!this.c.equals(wlVar.c)) {
            return false;
        }
        return xr.a(this.d, wlVar.d);
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.b == null ? 0 : this.b.hashCode()) + (((this.a == null ? 0 : this.a.intValue()) + ((getClass().getName().hashCode() + 527) * 31)) * 31)) * 31;
        if (this.c != null) {
            i = this.c.hashCode();
        }
        return ((hashCode + i) * 31) + xr.a(this.d);
    }
}
