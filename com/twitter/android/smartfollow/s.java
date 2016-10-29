package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.followpeople.FollowPeopleState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class s implements c<FollowPeopleState> {
    static final /* synthetic */ boolean a;
    private final o b;

    static {
        a = !s.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public s(o oVar) {
        if (a || oVar != null) {
            this.b = oVar;
            return;
        }
        throw new AssertionError();
    }

    public FollowPeopleState a() {
        return this.b.d();
    }

    public static c<FollowPeopleState> a(o oVar) {
        return new s(oVar);
    }
}
