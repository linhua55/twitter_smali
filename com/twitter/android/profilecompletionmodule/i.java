package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.addbio.AddBioState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class i implements c<AddBioState> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !i.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public i(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public AddBioState a() {
        return this.b.f();
    }

    public static c<AddBioState> a(g gVar) {
        return new i(gVar);
    }
}
