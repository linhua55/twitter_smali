package com.twitter.android.eventtimelines.tv.show;

import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ak implements c<s> {
    static final /* synthetic */ boolean a;
    private final aj b;

    static {
        a = !ak.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ak(aj ajVar) {
        if (a || ajVar != null) {
            this.b = ajVar;
            return;
        }
        throw new AssertionError();
    }

    public s a() {
        return (s) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<s> a(aj ajVar) {
        return new ak(ajVar);
    }
}
