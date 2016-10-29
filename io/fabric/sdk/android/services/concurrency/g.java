package io.fabric.sdk.android.services.concurrency;

import java.util.LinkedList;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
class g implements Executor {
    final LinkedList<Runnable> a;
    Runnable b;

    private g() {
        this.a = new LinkedList();
    }

    public synchronized void execute(Runnable runnable) {
        this.a.offer(new h(this, runnable));
        if (this.b == null) {
            a();
        }
    }

    protected synchronized void a() {
        Runnable runnable = (Runnable) this.a.poll();
        this.b = runnable;
        if (runnable != null) {
            AsyncTask.b.execute(this.b);
        }
    }
}
