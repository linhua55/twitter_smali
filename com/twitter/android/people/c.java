package com.twitter.android.people;

import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class c {
    private n a;

    private c() {
    }

    public n a() {
        if (this.a != null) {
            return new a(this, null);
        }
        throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
    }

    @Deprecated
    public c a(o oVar) {
        d.a(oVar);
        return this;
    }

    public c a(n nVar) {
        this.a = (n) d.a(nVar);
        return this;
    }
}
