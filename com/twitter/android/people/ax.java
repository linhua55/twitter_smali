package com.twitter.android.people;

import com.twitter.android.people.adapters.viewbinders.at;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.android.people.adapters.y;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.people.am;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class ax implements c<StateSaver<h<am, at, y>>> {
    static final /* synthetic */ boolean a;
    private final ar b;

    static {
        a = !ax.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public ax(ar arVar) {
        if (a || arVar != null) {
            this.b = arVar;
            return;
        }
        throw new AssertionError();
    }

    public StateSaver<h<am, at, y>> a() {
        return (StateSaver) d.a(this.b.c(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<StateSaver<h<am, at, y>>> a(ar arVar) {
        return new ax(arVar);
    }
}
