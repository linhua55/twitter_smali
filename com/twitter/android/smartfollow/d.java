package com.twitter.android.smartfollow;

import android.app.Application;
import com.twitter.app.common.app.l;
import dagger.internal.c;

/* compiled from: Twttr */
class d implements c<Application> {
    final /* synthetic */ f a;
    final /* synthetic */ c b;
    private final l c;

    d(c cVar, f fVar) {
        this.b = cVar;
        this.a = fVar;
        this.c = f.b(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Application a() {
        return (Application) dagger.internal.d.a(this.c.b(), "Cannot return null from a non-@Nullable component method");
    }
}
