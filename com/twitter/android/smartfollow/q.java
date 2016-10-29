package com.twitter.android.smartfollow;

import com.twitter.android.smartfollow.finishingtimeline.FinishingTimelineState;
import dagger.internal.c;

/* compiled from: Twttr */
public final class q implements c<FinishingTimelineState> {
    static final /* synthetic */ boolean a;
    private final o b;

    static {
        a = !q.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public q(o oVar) {
        if (a || oVar != null) {
            this.b = oVar;
            return;
        }
        throw new AssertionError();
    }

    public FinishingTimelineState a() {
        return this.b.c();
    }

    public static c<FinishingTimelineState> a(o oVar) {
        return new q(oVar);
    }
}
