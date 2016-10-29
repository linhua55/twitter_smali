package com.twitter.android.moments.ui.fullscreen;

import afk;
import com.twitter.model.moments.viewmodels.s;
import com.twitter.util.z;

/* compiled from: Twttr */
public class l {
    private final afk a;
    private final cg b;
    private final y c;
    private final s d;
    private final z<Boolean> e;

    public l(afk afk, cg cgVar, y yVar, s sVar) {
        this.e = new m(this);
        this.a = afk;
        this.b = cgVar;
        this.c = yVar;
        this.d = sVar;
        this.a.a(new n(this));
        this.a.b();
    }

    public void a() {
        this.b.c().a(this.e);
    }

    public void b() {
        this.b.c().b(this.e);
    }

    public void c() {
        a(this.b.a());
    }

    private void a(boolean z) {
        if (z && d()) {
            this.a.a();
        } else {
            this.a.b();
        }
    }

    private boolean d() {
        return this.c.a(this.d) != null;
    }
}
