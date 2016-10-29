package com.twitter.android.av;

import defpackage.bbl;
import defpackage.bbn;

/* compiled from: Twttr */
public class v {
    private static v a;
    private final w b;

    public static synchronized void a(w wVar) {
        synchronized (v.class) {
            a = new v(wVar);
        }
    }

    public static synchronized int a() {
        int i;
        synchronized (v.class) {
            if (a == null) {
                bbn.a(new bbl(new IllegalStateException("AutoPlayPreferences#getAutoPlayEnabled called before initialize")));
                i = 0;
            } else {
                i = a.b() ? 2 : 1;
            }
        }
        return i;
    }

    private v(w wVar) {
        this.b = wVar;
    }

    public boolean b() {
        return this.b.a();
    }
}
