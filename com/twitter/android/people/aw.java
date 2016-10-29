package com.twitter.android.people;

import com.twitter.android.people.adapters.aq;
import com.twitter.android.people.adapters.viewbinders.h;
import com.twitter.android.people.adapters.w;
import com.twitter.app.common.util.StateSaver;
import com.twitter.model.core.as;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class aw implements c<StateSaver<h<as, aq, w>>> {
    static final /* synthetic */ boolean a;
    private final ar b;

    static {
        a = !aw.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public aw(ar arVar) {
        if (a || arVar != null) {
            this.b = arVar;
            return;
        }
        throw new AssertionError();
    }

    public StateSaver<h<as, aq, w>> a() {
        return (StateSaver) d.a(this.b.e(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<StateSaver<h<as, aq, w>>> a(ar arVar) {
        return new aw(arVar);
    }
}
