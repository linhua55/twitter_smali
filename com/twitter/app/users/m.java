package com.twitter.app.users;

import android.support.annotation.LayoutRes;
import com.twitter.util.aj;
import com.twitter.util.object.f;

/* compiled from: Twttr */
class m extends f<l> {
    private String a;
    private boolean b;
    private boolean c;
    @LayoutRes
    private int d;
    private boolean e;
    private boolean f;

    m() {
    }

    protected /* synthetic */ Object c() {
        return d();
    }

    public m a(String str) {
        this.a = str;
        return this;
    }

    public m a(boolean z) {
        this.b = z;
        return this;
    }

    public m b(boolean z) {
        this.c = z;
        return this;
    }

    public m a(@LayoutRes int i) {
        this.d = i;
        return this;
    }

    public m c(boolean z) {
        this.e = z;
        return this;
    }

    public m d(boolean z) {
        this.f = z;
        return this;
    }

    public boolean bo_() {
        return !aj.a(this.a);
    }

    protected l d() {
        return new l();
    }
}
