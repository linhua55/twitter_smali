package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class e {
    private l a;
    private n b;

    private e() {
    }

    public k a() {
        if (this.a == null) {
            throw new IllegalStateException(l.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new a();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public e a(l lVar) {
        this.a = (l) d.a(lVar);
        return this;
    }

    public e a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
