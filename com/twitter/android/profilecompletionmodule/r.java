package com.twitter.android.profilecompletionmodule;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class r implements c<com.twitter.android.profilecompletionmodule.profilepreview.c> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !r.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public r(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public com.twitter.android.profilecompletionmodule.profilepreview.c a() {
        return (com.twitter.android.profilecompletionmodule.profilepreview.c) d.a(this.b.k(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<com.twitter.android.profilecompletionmodule.profilepreview.c> a(g gVar) {
        return new r(gVar);
    }
}
