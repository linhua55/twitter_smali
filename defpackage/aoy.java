package defpackage;

import android.net.Uri;
import android.net.Uri.Builder;

/* compiled from: Twttr */
/* renamed from: aoy */
public class aoy {
    Uri a;
    String[] b;
    String c;
    String[] d;
    String e;

    public aoy a(Uri uri) {
        this.a = uri;
        return this;
    }

    public aoy a(String[] strArr) {
        this.b = strArr;
        return this;
    }

    public aoy a(String str) {
        this.c = str;
        return this;
    }

    public aoy b(String[] strArr) {
        this.d = strArr;
        return this;
    }

    public aoy b(String str) {
        this.e = str;
        return this;
    }

    public aow a() {
        if (this.a == null) {
            this.a = new Builder().build();
        }
        return new aow();
    }
}
