package com.twitter.android.client;

import rx.ak;
import rx.al;

/* compiled from: Twttr */
class bp implements ak<Boolean> {
    final /* synthetic */ bo a;

    bp(bo boVar) {
        this.a = boVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((al) obj);
    }

    public void a(al<? super Boolean> alVar) {
        if (this.a.b() && this.a.b.h()) {
            this.a.c.a(this.a.a, new bq(this, alVar));
        } else {
            alVar.a(Boolean.valueOf(true));
        }
    }
}
