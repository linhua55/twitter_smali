package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.waitingforsuggestions.WaitingForSuggestionsState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class u implements c<WaitingForSuggestionsState> {
    static final /* synthetic */ boolean a;
    private final o b;

    static {
        a = !u.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public u(o oVar) {
        if (a || oVar != null) {
            this.b = oVar;
            return;
        }
        throw new AssertionError();
    }

    public WaitingForSuggestionsState a() {
        return this.b.e();
    }

    public static c<WaitingForSuggestionsState> a(o oVar) {
        return new u(oVar);
    }
}
