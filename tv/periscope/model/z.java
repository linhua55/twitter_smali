package tv.periscope.model;

import defpackage.ddg;

/* compiled from: Twttr */
public abstract class z {
    static final z a;

    public abstract String a();

    public abstract String b();

    public abstract String c();

    static {
        a = a(null, null, null);
    }

    z() {
    }

    public static z a(String str, String str2, String str3) {
        return new l(str, str2, str3);
    }

    public String toString() {
        Object b = b();
        Object c = c();
        String a = a();
        if (ddg.b(b) && ddg.b(c) && ddg.b(a)) {
            return b + ", " + c + ", " + a;
        }
        if (ddg.b(b) && ddg.b(c)) {
            return b + ", " + c;
        }
        if (ddg.b(b) && ddg.b(a)) {
            return b + ", " + a;
        }
        return !ddg.b(a) ? "" : a;
    }
}
