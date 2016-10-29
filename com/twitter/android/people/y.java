package com.twitter.android.people;

import bbn;
import com.twitter.android.people.adapters.i;
import rx.am;

/* compiled from: Twttr */
class y extends am<Iterable<i>> {
    final /* synthetic */ x a;

    y(x xVar) {
        this.a = xVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Iterable) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        this.a.h = false;
        this.a.i = true;
        this.a.f.a();
        bbn.a(th);
    }

    public void a(Iterable<i> iterable) {
        this.a.h = false;
        this.a.i = true;
        this.a.d = iterable;
        this.a.f();
    }
}
