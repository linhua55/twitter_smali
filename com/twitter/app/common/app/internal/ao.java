package com.twitter.app.common.app.internal;

import com.twitter.app.common.account.UserIdentifier;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ao implements c<UserIdentifier> {
    static final /* synthetic */ boolean a;
    private final an b;

    static {
        a = !ao.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ao(an anVar) {
        if (a || anVar != null) {
            this.b = anVar;
            return;
        }
        throw new AssertionError();
    }

    public UserIdentifier a() {
        return (UserIdentifier) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<UserIdentifier> a(an anVar) {
        return new ao(anVar);
    }
}
