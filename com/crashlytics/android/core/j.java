package com.crashlytics.android.core;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class j implements Callable<Boolean> {
    final /* synthetic */ f a;

    j(f fVar) {
        this.a = fVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Boolean a() throws Exception {
        return Boolean.valueOf(f.a(this.a).b());
    }
}
