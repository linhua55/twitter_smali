package com.twitter.android.moments.data;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class at implements Callable<Void> {
    final /* synthetic */ ar a;

    at(ar arVar) {
        this.a = arVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() {
        this.a.c.b(this.a.a.b);
        return null;
    }
}
