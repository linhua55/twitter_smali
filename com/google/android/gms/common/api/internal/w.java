package com.google.android.gms.common.api.internal;

import android.support.annotation.WorkerThread;

abstract class w implements Runnable {
    final /* synthetic */ n b;

    private w(n nVar) {
        this.b = nVar;
    }

    @WorkerThread
    protected abstract void a();

    @WorkerThread
    public void run() {
        this.b.b.lock();
        try {
            if (!Thread.interrupted()) {
                a();
                this.b.b.unlock();
            }
        } catch (RuntimeException e) {
            this.b.a.a(e);
        } finally {
            this.b.b.unlock();
        }
    }
}
