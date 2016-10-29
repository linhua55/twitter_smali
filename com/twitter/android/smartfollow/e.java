package com.twitter.android.smartfollow;

import com.twitter.app.common.app.l;
import com.twitter.library.client.bg;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class e implements c<bg> {
    final /* synthetic */ f a;
    final /* synthetic */ c b;
    private final l c;

    e(c cVar, f fVar) {
        this.b = cVar;
        this.a = fVar;
        this.c = f.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public bg a() {
        return (bg) d.a(this.c.n(), "Cannot return null from a non-@Nullable component method");
    }
}
