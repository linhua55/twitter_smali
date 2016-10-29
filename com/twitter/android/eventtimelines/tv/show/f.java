package com.twitter.android.eventtimelines.tv.show;

import com.twitter.android.eventtimelines.m;
import com.twitter.app.common.app.l;
import dagger.internal.d;

/* compiled from: Twttr */
public final class f {
    private ab a;
    private l b;

    private f() {
    }

    public r a() {
        if (this.a == null) {
            throw new IllegalStateException(ab.class.getCanonicalName() + " must be set");
        } else if (this.b != null) {
            return new d();
        } else {
            throw new IllegalStateException(l.class.getCanonicalName() + " must be set");
        }
    }

    @Deprecated
    public f a(m mVar) {
        d.a(mVar);
        return this;
    }

    public f a(ab abVar) {
        this.a = (ab) d.a(abVar);
        return this;
    }

    public f a(l lVar) {
        this.b = (l) d.a(lVar);
        return this;
    }
}
