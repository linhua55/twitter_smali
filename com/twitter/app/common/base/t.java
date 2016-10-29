package com.twitter.app.common.base;

import com.twitter.library.client.d;

/* compiled from: Twttr */
public class t extends d {
    boolean a;
    boolean b;
    int c;
    int d;

    t() {
        this.a = true;
        this.b = true;
        this.c = 0;
        this.d = 2;
    }

    protected t(t tVar) {
        super(tVar);
        this.a = true;
        this.b = true;
        this.c = 0;
        this.d = 2;
        this.a = tVar.a;
        this.b = tVar.b;
        this.d = tVar.d;
        this.c = tVar.c;
    }

    public final void a(int i) {
        c();
        this.c = i;
    }

    public final void a(boolean z) {
        c();
        this.a = z;
    }

    public final void b(boolean z) {
        c();
        this.b = z;
    }
}
