package defpackage;

import android.content.Context;
import com.twitter.library.service.ab;

/* compiled from: Twttr */
/* renamed from: boz */
public final class boz {
    private final Context a;
    private final ab b;
    private int c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;

    public boz(Context context, ab abVar) {
        this.a = context;
        this.b = abVar;
    }

    public boz a(int i) {
        this.c = i;
        return this;
    }

    public boz a(String str) {
        this.d = str;
        return this;
    }

    public boz b(String str) {
        this.e = str;
        return this;
    }

    public boz c(String str) {
        this.f = str;
        return this;
    }

    public boz d(String str) {
        this.g = str;
        return this;
    }

    public boz e(String str) {
        this.h = str;
        return this;
    }

    public box a() {
        return new box();
    }
}
