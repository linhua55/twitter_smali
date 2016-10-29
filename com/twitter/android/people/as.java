package com.twitter.android.people;

import com.twitter.android.people.adapters.a;
import com.twitter.android.people.adapters.o;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.app.common.util.StateSaver;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class as implements c<StateSaver<h<String, a, o>>> {
    static final /* synthetic */ boolean a;
    private final ar b;

    static {
        a = !as.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public as(ar arVar) {
        if (a || arVar != null) {
            this.b = arVar;
            return;
        }
        throw new AssertionError();
    }

    public StateSaver<h<String, a, o>> a() {
        return (StateSaver) d.a(this.b.d(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<StateSaver<h<String, a, o>>> a(ar arVar) {
        return new as(arVar);
    }
}
