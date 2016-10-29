package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.chooseavatar.ChooseAvatarState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class m implements c<ChooseAvatarState> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public ChooseAvatarState a() {
        return this.b.b();
    }

    public static c<ChooseAvatarState> a(g gVar) {
        return new m(gVar);
    }
}
