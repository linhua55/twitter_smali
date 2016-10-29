package com.twitter.app.drafts;

import com.twitter.app.common.app.n;
import dagger.internal.d;
import defpackage.apq;

/* compiled from: Twttr */
public final class f {
    private apq a;
    private n b;

    private f() {
    }

    public o a() {
        if (this.a == null) {
            throw new IllegalStateException(apq.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new c();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public f a(apq apq) {
        this.a = (apq) d.a(apq);
        return this;
    }

    public f a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
