package com.twitter.android.communities;

import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class as {
    private t a;
    private n b;

    private as() {
    }

    public ae a() {
        if (this.a == null) {
            throw new IllegalStateException(t.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new al();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public as a(t tVar) {
        this.a = (t) d.a(tVar);
        return this;
    }

    public as a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
