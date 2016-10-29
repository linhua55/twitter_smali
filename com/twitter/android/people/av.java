package com.twitter.android.people;

import com.twitter.app.common.list.t;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class av implements c<t> {
    static final /* synthetic */ boolean a;
    private final ar b;

    static {
        a = !av.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public av(ar arVar) {
        if (a || arVar != null) {
            this.b = arVar;
            return;
        }
        throw new AssertionError();
    }

    public t a() {
        return (t) d.a(this.b.a(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<t> a(ar arVar) {
        return new av(arVar);
    }
}
