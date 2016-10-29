package com.twitter.android.smartfollow;

import com.twitter.app.common.app.l;
import dagger.internal.d;

/* compiled from: Twttr */
public final class f {
    private o a;
    private l b;

    private f() {
    }

    public ab a() {
        if (this.a == null) {
            throw new IllegalStateException(o.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new c();
        } else {
            throw new IllegalStateException(l.class.getCanonicalName() + " must be set");
        }
    }

    public f a(o oVar) {
        this.a = (o) d.a(oVar);
        return this;
    }

    public f a(l lVar) {
        this.b = (l) d.a(lVar);
        return this;
    }
}
