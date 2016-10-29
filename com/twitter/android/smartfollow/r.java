package com.twitter.android.smartfollow;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class r implements c<Integer> {
    static final /* synthetic */ boolean a;
    private final o b;

    static {
        a = !r.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public r(o oVar) {
        if (a || oVar != null) {
            this.b = oVar;
            return;
        }
        throw new AssertionError();
    }

    public Integer a() {
        return (Integer) d.a(Integer.valueOf(this.b.b()), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Integer> a(o oVar) {
        return new r(oVar);
    }
}
