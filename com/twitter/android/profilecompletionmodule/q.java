package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.chooselocation.ChooseLocationState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class q implements c<ChooseLocationState> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public ChooseLocationState a() {
        return this.b.j();
    }

    public static c<ChooseLocationState> a(g gVar) {
        return new q(gVar);
    }
}
