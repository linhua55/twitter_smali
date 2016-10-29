package com.twitter.android.smartfollow.interestsearch;

import com.twitter.app.common.app.n;

/* compiled from: Twttr */
public final class d {
    private n a;

    private d() {
    }

    public j a() {
        if (this.a != null) {
            return new a();
        }
        throw new IllegalStateException(n.class.getCanonicalName() + " must be set");
    }

    public d a(n nVar) {
        this.a = (n) dagger.internal.d.a(nVar);
        return this;
    }
}
