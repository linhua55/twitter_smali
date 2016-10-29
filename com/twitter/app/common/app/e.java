package com.twitter.app.common.app;

import com.twitter.app.common.app.internal.a;
import com.twitter.app.common.app.internal.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class e {
    private a a;
    private n b;

    private e() {
    }

    public l a() {
        if (this.a == null) {
            throw new IllegalStateException(a.class.getCanonicalName() + " must be set");
        }
        if (this.b == null) {
            this.b = new n();
        }
        return new c();
    }

    public e a(a aVar) {
        this.a = (a) d.a(aVar);
        return this;
    }

    public e a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
