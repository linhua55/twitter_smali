package com.twitter.android.livevideo.landing.di;

import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class j {
    private v a;
    private n b;

    private j() {
    }

    public u a() {
        if (this.a == null) {
            throw new IllegalStateException(v.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new f();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public j a(v vVar) {
        this.a = (v) d.a(vVar);
        return this;
    }

    public j a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
