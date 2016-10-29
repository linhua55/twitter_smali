package com.twitter.android.av.watchmode;

import com.twitter.library.scribe.TwitterScribeAssociation;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
public final class m implements c<TwitterScribeAssociation> {
    static final /* synthetic */ boolean a;
    private final l b;

    static {
        a = !m.class.desiredAssertionStatus();
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public m(l lVar) {
        if (a || lVar != null) {
            this.b = lVar;
            return;
        }
        throw new AssertionError();
    }

    public TwitterScribeAssociation a() {
        return (TwitterScribeAssociation) d.a(this.b.b(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static c<TwitterScribeAssociation> a(l lVar) {
        return new m(lVar);
    }
}
