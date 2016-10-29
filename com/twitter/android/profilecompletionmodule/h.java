package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.addbio.a;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class h implements c<a> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !h.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public h(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public a a() {
        return (a) d.a(this.b.e(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<a> a(g gVar) {
        return new h(gVar);
    }
}
