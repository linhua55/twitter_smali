package com.twitter.internal.android.service;

/* compiled from: Twttr */
class aa implements c {
    final /* synthetic */ z a;

    aa(z zVar) {
        this.a = zVar;
    }

    public void b(AsyncOperation asyncOperation) {
    }

    public void a(Object obj, AsyncOperation asyncOperation) {
    }

    public void a(AsyncOperation asyncOperation) {
        synchronized (this.a.f) {
            this.a.c.remove(asyncOperation.d);
            this.a.d.remove(asyncOperation.d);
        }
    }
}
