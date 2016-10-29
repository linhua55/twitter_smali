package defpackage;

import cmb;

/* compiled from: Twttr */
/* renamed from: bzr */
public class bzr extends bzy<bzs, cmb> {
    private static bzr c;

    bzr() {
    }

    public static bzr a() {
        if (c == null) {
            c = new bzr();
        }
        return c;
    }

    protected void a(bzs bzs, long j, cmb cmb) {
        bzs.a(j, cmb);
    }
}
