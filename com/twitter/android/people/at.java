package com.twitter.android.people;

import com.twitter.android.people.adapters.f;
import com.twitter.android.people.adapters.q;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.people.aa;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class at implements c<StateSaver<h<aa, f, q>>> {
    static final /* synthetic */ boolean a;
    private final ar b;

    static {
        a = !at.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public at(ar arVar) {
        if (a || arVar != null) {
            this.b = arVar;
            return;
        }
        throw new AssertionError();
    }

    public StateSaver<h<aa, f, q>> a() {
        return (StateSaver) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<StateSaver<h<aa, f, q>>> a(ar arVar) {
        return new at(arVar);
    }
}
