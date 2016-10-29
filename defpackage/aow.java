package defpackage;

import android.net.Uri;
import com.twitter.util.object.ObjectUtils;

/* compiled from: Twttr */
/* renamed from: aow */
public class aow {
    public final Uri a;
    public final String[] b;
    public final String c;
    public final String[] d;
    public final String e;

    public aow(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        this.a = uri;
        this.b = strArr;
        this.c = str;
        this.d = strArr2;
        this.e = str2;
    }

    private aow(aoy aoy) {
        this.a = aoy.a;
        this.b = aoy.b;
        this.c = aoy.c;
        this.d = aoy.d;
        this.e = aoy.e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof aow)) {
            return false;
        }
        aow aow = (aow) obj;
        if (ObjectUtils.a(this.a, aow.a) && ObjectUtils.a(this.b, aow.b) && ObjectUtils.a(this.c, aow.c) && ObjectUtils.a(this.d, aow.d) && ObjectUtils.a(this.e, aow.e)) {
            return true;
        }
        return false;
    }

    public int hashCode() {
        return (((((((ObjectUtils.b(this.a) * 31) + ObjectUtils.b(this.b)) * 31) + ObjectUtils.b(this.c)) * 31) + ObjectUtils.b(this.d)) * 31) + ObjectUtils.b(this.e);
    }
}
