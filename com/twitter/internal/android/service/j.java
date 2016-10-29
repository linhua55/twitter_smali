package com.twitter.internal.android.service;

import com.twitter.util.concurrent.n;

/* compiled from: Twttr */
class j implements n<Void> {
    final /* synthetic */ i a;

    j(i iVar) {
        this.a = iVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public Void a() {
        try {
            d m = i.b(this.a).m();
            if (m != null) {
                m.b("blocking");
            }
            i.d(this.a);
            Object obj = (!i.b(this.a).q() || i.e(this.a)) ? 1 : null;
            if (obj != null) {
                i.f(this.a);
            }
        } catch (Throwable th) {
            AsyncService.b(this.a.a).a(new o(th));
        }
        return null;
    }
}
