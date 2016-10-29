package com.twitter.android.moments.ui.fullscreen;

import agk;
import android.support.annotation.LayoutRes;

/* compiled from: Twttr */
public abstract class dn {
    private final agk a;
    private dp b;

    @LayoutRes
    protected abstract int d();

    public dn(agk agk) {
        this.a = agk;
    }

    public void a() {
        if (this.a.e()) {
            this.a.c(d());
            c();
            this.a.c();
        }
    }

    public boolean b() {
        if (this.a.e()) {
            return false;
        }
        this.a.d();
        if (this.b != null) {
            this.b.a();
        }
        return true;
    }

    protected void c() {
        this.a.d(new do(this));
    }

    public void a(dp dpVar) {
        this.b = dpVar;
    }
}
