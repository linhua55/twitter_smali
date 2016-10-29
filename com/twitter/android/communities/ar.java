package com.twitter.android.communities;

import android.app.Application;
import com.twitter.app.common.app.n;
import dagger.internal.c;
import dagger.internal.d;

/* compiled from: Twttr */
class ar implements c<Application> {
    final /* synthetic */ as a;
    final /* synthetic */ al b;
    private final n c;

    ar(al alVar, as asVar) {
        this.b = alVar;
        this.a = asVar;
        this.c = as.a(this.a);
    }

    public /* synthetic */ Object b() {
        return a();
    }

    public Application a() {
        return (Application) d.a(this.c.b(), "Cannot return null from a non-@Nullable component method");
    }
}
