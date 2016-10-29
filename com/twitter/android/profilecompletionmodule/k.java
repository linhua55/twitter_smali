package com.twitter.android.profilecompletionmodule;

import com.twitter.android.profilecompletionmodule.addbirthday.AddBirthdayState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class k implements c<AddBirthdayState> {
    static final /* synthetic */ boolean a;
    private final g b;

    static {
        a = !k.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public k(g gVar) {
        if (a || gVar != null) {
            this.b = gVar;
            return;
        }
        throw new AssertionError();
    }

    public AddBirthdayState a() {
        return this.b.h();
    }

    public static c<AddBirthdayState> a(g gVar) {
        return new k(gVar);
    }
}
