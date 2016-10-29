package com.twitter.android.profilecompletionmodule;

/* compiled from: Twttr */
public final class d {
    private g a;

    private d() {
    }

    public y a() {
        if (this.a != null) {
            return new b();
        }
        throw new IllegalStateException(g.class.getCanonicalName() + " must be set");
    }

    public d a(g gVar) {
        this.a = (g) dagger.internal.d.a(gVar);
        return this;
    }
}
