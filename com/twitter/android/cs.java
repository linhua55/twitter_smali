package com.twitter.android;

import bbn;
import rx.am;

/* compiled from: Twttr */
class cs extends am<Long> {
    final /* synthetic */ cr a;

    cs(cr crVar) {
        this.a = crVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Long) obj);
    }

    public void bs_() {
    }

    public void a(Throwable th) {
        bbn.a(th);
    }

    public void a(Long l) {
        DMConversationFragment.a(this.a.a).b(l.longValue());
    }
}
