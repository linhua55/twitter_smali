package com.facebook.imagepipeline.producers;

import android.util.Pair;

/* compiled from: Twttr */
class cl extends w<T, T> {
    final /* synthetic */ cj a;

    private cl(cj cjVar, o<T> oVar) {
        this.a = cjVar;
        super(oVar);
    }

    protected void a(T t, boolean z) {
        d().b(t, z);
        if (z) {
            c();
        }
    }

    protected void a(Throwable th) {
        d().b(th);
        c();
    }

    protected void a() {
        d().b();
        c();
    }

    private void c() {
        synchronized (this.a) {
            Pair pair = (Pair) this.a.d.poll();
            if (pair == null) {
                this.a.c = this.a.c - 1;
            }
        }
        if (pair != null) {
            this.a.e.execute(new cm(this, pair));
        }
    }
}
