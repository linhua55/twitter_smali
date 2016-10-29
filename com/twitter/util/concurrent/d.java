package com.twitter.util.concurrent;

import java.util.concurrent.Callable;

/* compiled from: Twttr */
class d implements Runnable {
    final /* synthetic */ ObservablePromise a;
    final /* synthetic */ Callable b;
    final /* synthetic */ e c;
    final /* synthetic */ c d;

    d(c cVar, ObservablePromise observablePromise, Callable callable, e eVar) {
        this.d = cVar;
        this.a = observablePromise;
        this.b = callable;
        this.c = eVar;
    }

    public void run() {
        Throwable e;
        if (!this.a.isCancelled()) {
            Object call;
            try {
                call = this.b.call();
                try {
                    this.a.set(call);
                } catch (Exception e2) {
                    e = e2;
                    this.a.setException(e);
                    if (this.a.isCancelled()) {
                        return;
                    }
                }
            } catch (Throwable e3) {
                Throwable th = e3;
                call = null;
                e = th;
                this.a.setException(e);
                if (this.a.isCancelled()) {
                }
                return;
            }
            if (this.a.isCancelled() && this.c != null) {
                this.c.a(call);
            }
        }
    }
}
