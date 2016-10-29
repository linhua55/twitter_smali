package defpackage;

import bux;

/* compiled from: Twttr */
/* renamed from: buw */
public class buw {
    private static final bux a;
    private static final bux b;

    static {
        a = new bux(400, 100);
        b = new bux(400, 500);
    }

    public static int a(int i) {
        if (i == 0) {
            return b.b;
        }
        return a.b;
    }

    public static int b(int i) {
        if (i == 0) {
            return b.a;
        }
        return a.a;
    }
}
