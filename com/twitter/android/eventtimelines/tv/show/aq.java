package com.twitter.android.eventtimelines.tv.show;

import com.twitter.model.eventtimelines.TvShow;
import dbd;
import rx.o;

/* compiled from: Twttr */
public class aq implements ap {
    private final y a;
    private final am b;

    public aq(am amVar, y yVar) {
        this.a = yVar;
        this.b = amVar;
    }

    private o<TvShow> b(long j) {
        return o.a(new ar(this, j)).b(dbd.d());
    }

    private o<TvShow> c(long j) {
        return this.b.a(j).h(new at(this)).a(new as(this));
    }

    public o<TvShow> a(long j) {
        return o.a(b(j), c(j)).a(1);
    }
}
