package com.twitter.android.livevideo.landing.di;

import com.twitter.library.scribe.TwitterScribeItem;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class z implements c<TwitterScribeItem> {
    static final /* synthetic */ boolean a;
    private final v b;

    static {
        a = !z.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public z(v vVar) {
        if (a || vVar != null) {
            this.b = vVar;
            return;
        }
        throw new AssertionError();
    }

    public TwitterScribeItem a() {
        return (TwitterScribeItem) d.a(this.b.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<TwitterScribeItem> a(v vVar) {
        return new z(vVar);
    }
}
