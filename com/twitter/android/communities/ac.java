package com.twitter.android.communities;

import defpackage.cho;
import rx.am;
import rx.p;

/* compiled from: Twttr */
class ac implements p<cho> {
    final /* synthetic */ long a;
    final /* synthetic */ y b;

    ac(y yVar, long j) {
        this.b = yVar;
        this.a = j;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super cho> amVar) {
        cho a = this.b.a.a(this.a);
        if (a != null) {
            amVar.b_(a);
        }
        amVar.bs_();
    }
}
