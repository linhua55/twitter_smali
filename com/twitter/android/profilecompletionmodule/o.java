package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.chooseheader.ChooseHeaderState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class o implements c<ChooseHeaderState> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !o.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public o(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public ChooseHeaderState a() {
        return this.b.d();
    }

    public static c<ChooseHeaderState> a(g gVar) {
        return new o(gVar);
    }
}
