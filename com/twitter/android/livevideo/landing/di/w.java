package com.twitter.android.livevideo.landing.di;

import android.content.Context;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class w implements c<Context> {
    static final /* synthetic */ boolean a;
    private final v b;

    static {
        a = !w.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public w(v vVar) {
        if (a || vVar != null) {
            this.b = vVar;
            return;
        }
        throw new AssertionError();
    }

    public Context a() {
        return (Context) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<Context> a(v vVar) {
        return new w(vVar);
    }
}
