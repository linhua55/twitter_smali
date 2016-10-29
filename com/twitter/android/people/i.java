package com.twitter.android.people;

import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class i {
    private aa a;
    private n b;

    private i() {
    }

    public aj a() {
        if (this.a == null) {
            throw new IllegalStateException(aa.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new d();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public i a(aa aaVar) {
        this.a = (aa) d.a(aaVar);
        return this;
    }

    public i a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
