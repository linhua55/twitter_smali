package com.twitter.android.people;

import com.twitter.android.people.adapters.i;
import cto;
import cyw;

/* compiled from: Twttr */
class s implements cyw<Iterable<i>, Iterable<i>> {
    final /* synthetic */ q a;

    s(q qVar) {
        this.a = qVar;
    }

    public Iterable<i> a(Iterable<i> iterable) {
        return cto.b(iterable, new t(this));
    }
}
