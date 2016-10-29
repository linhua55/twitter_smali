package com.twitter.internal.android.service;

/* compiled from: Twttr */
public class m<S> implements Runnable {
    final /* synthetic */ AsyncService a;
    private i<S> b;
    private boolean c;

    public m(AsyncService asyncService, i<S> iVar) {
        this.a = asyncService;
        this.b = iVar;
    }

    public final boolean equals(Object obj) {
        return super.equals(obj);
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void run() {
        AsyncService.d(this.a).remove(this);
        AsyncService.b(this.a).b(this);
        synchronized (this) {
            if (this.c) {
                return;
            }
            this.c = true;
            this.a.a(this.b);
            this.b = null;
        }
    }
}
