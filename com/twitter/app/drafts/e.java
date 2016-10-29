package com.twitter.app.drafts;

import com.twitter.app.common.app.n;
import com.twitter.library.client.bg;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class e implements c<bg> {
    final /* synthetic */ f a;
    final /* synthetic */ c b;
    private final n c;

    e(c cVar, f fVar) {
        this.b = cVar;
        this.a = fVar;
        this.c = this.a.b;
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public bg a() {
        return (bg) d.a(this.c.n(), "Cannot return null from a non-@Nullable component method");
    }
}
