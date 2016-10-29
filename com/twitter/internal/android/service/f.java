package com.twitter.internal.android.service;

/* compiled from: Twttr */
class f extends w {
    final /* synthetic */ e a;

    f(e eVar, int i) {
        this.a = eVar;
        super(i);
    }

    public void run() {
        try {
            this.a.a.run();
        } catch (Throwable th) {
            AsyncService.b(this.a.d).a(new o(th));
        } finally {
            e.a(this.a, this.a.c);
        }
    }
}
