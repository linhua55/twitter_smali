package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.chooseheader.a;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class n implements c<a> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !n.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public n(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) d.a(this.b.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<a> a(g gVar) {
        return new n(gVar);
    }
}
