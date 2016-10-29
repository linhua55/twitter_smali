package com.twitter.android.eventtimelines.tv.show;

import com.twitter.android.eventtimelines.r;
import com.twitter.app.common.app.n;
import dagger.internal.d;

/* compiled from: Twttr */
public final class m {
    private r a;
    private aj b;
    private n c;

    private m() {
    }

    public av a() {
        if (this.a == null) {
            throw new IllegalStateException(r.class.getCanonicalName() + " must be set");
        } else if (this.b == null) {
            throw new IllegalStateException(aj.class.getCanonicalName() + " must be set");
        } else if (this.c != null) {
            return new g();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public m a(r rVar) {
        this.a = (r) d.a(rVar);
        return this;
    }

    public m a(aj ajVar) {
        this.b = (aj) d.a(ajVar);
        return this;
    }

    public m a(n nVar) {
        this.c = (n) d.a(nVar);
        return this;
    }
}
