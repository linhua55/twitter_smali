package com.twitter.android.av.monetization;

import com.twitter.app.common.app.n;
import dagger.internal.d;
import defpackage.ur;

/* compiled from: Twttr */
public final class c {
    private ur a;
    private n b;

    private c() {
    }

    public p a() {
        if (this.a == null) {
            throw new IllegalStateException(ur.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new a();
        } else {
            throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
        }
    }

    public c a(ur urVar) {
        this.a = (ur) d.a(urVar);
        return this;
    }

    public c a(n nVar) {
        this.b = (n) d.a(nVar);
        return this;
    }
}
