package com.twitter.android.people;

import akp;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ab implements c<akp> {
    static final /* synthetic */ boolean a;
    private final aa b;

    static {
        a = !ab.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ab(aa aaVar) {
        if (a || aaVar != null) {
            this.b = aaVar;
            return;
        }
        throw new AssertionError();
    }

    public akp a() {
        return (akp) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<akp> a(aa aaVar) {
        return new ab(aaVar);
    }
}
