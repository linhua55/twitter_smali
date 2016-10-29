package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Executor;

/* compiled from: Twttr */
class m<Result> implements Executor {
    private final Executor a;
    private final l b;

    public m(Executor executor, l lVar) {
        this.a = executor;
        this.b = lVar;
    }

    public void execute(Runnable runnable) {
        this.a.execute(new n(this, runnable, null));
    }
}
