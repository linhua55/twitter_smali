package com.twitter.android.av.watchmode;

import com.twitter.library.av.playback.AVDataSource;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class n implements c<AVDataSource> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !n.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public n(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public AVDataSource a() {
        return (AVDataSource) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<AVDataSource> a(l lVar) {
        return new n(lVar);
    }
}
