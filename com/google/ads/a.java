package com.google.ads;

import com.google.android.gms.ads.g;

@Deprecated
public final class a {
    public static final a a;
    public static final a b;
    public static final a c;
    public static final a d;
    public static final a e;
    public static final a f;
    private final g g;

    static {
        a = new a(-1, -2, "mb");
        b = new a(320, 50, "mb");
        c = new a(300, 250, "as");
        d = new a(468, 60, "as");
        e = new a(728, 90, "as");
        f = new a(160, 600, "as");
    }

    private a(int i, int i2, String str) {
        this(new g(i, i2));
    }

    public a(g gVar) {
        this.g = gVar;
    }

    public int a() {
        return this.g.b();
    }

    public int b() {
        return this.g.a();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return this.g.equals(((a) obj).g);
    }

    public int hashCode() {
        return this.g.hashCode();
    }

    public String toString() {
        return this.g.toString();
    }
}
