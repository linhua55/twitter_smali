package defpackage;

import bbn;

/* compiled from: Twttr */
/* renamed from: cbz */
public abstract class cbz {
    private static cbz a;

    public abstract void a();

    public static cbz b() {
        if (a == null) {
            bbn.a(new NullPointerException("Make sure an instance is set before calling this method"));
        }
        return a;
    }

    public static void a(cbz cbz) {
        a = cbz;
    }
}
