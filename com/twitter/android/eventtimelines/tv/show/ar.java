package com.twitter.android.eventtimelines.tv.show;

import com.twitter.model.eventtimelines.TvShow;
import rx.am;
import rx.p;

/* compiled from: Twttr */
class ar implements p<TvShow> {
    final /* synthetic */ long a;
    final /* synthetic */ aq b;

    ar(aq aqVar, long j) {
        this.b = aqVar;
        this.a = j;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super TvShow> amVar) {
        TvShow a = this.b.a.a(this.a);
        if (a != null) {
            amVar.b_(a);
        }
        amVar.bs_();
    }
}
