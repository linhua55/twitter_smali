package com.twitter.android.livevideo.landing.di;

import com.twitter.library.scribe.TwitterScribeItem;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class t implements c<TwitterScribeItem> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !t.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public t(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public TwitterScribeItem a() {
        return (TwitterScribeItem) d.a(this.b.e(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<TwitterScribeItem> a(l lVar) {
        return new t(lVar);
    }
}
