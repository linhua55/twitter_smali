package com.twitter.android.eventtimelines.tv.show;

import android.app.Application;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class i implements c<Application> {
    final /* synthetic */ m a;
    final /* synthetic */ g b;
    private final n c;

    i(g gVar, m mVar) {
        this.b = gVar;
        this.a = mVar;
        this.c = m.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Application a() {
        return (Application) d.a(this.c.b(), "Cannot return null from a non-@Nullable component method");
    }
}
