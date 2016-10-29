package com.twitter.android.eventtimelines.tv.show;

import com.twitter.model.eventtimelines.TvShow;
import cys;

/* compiled from: Twttr */
class ag implements cys<TvShow> {
    final /* synthetic */ ae a;
    final /* synthetic */ af b;

    ag(af afVar, ae aeVar) {
        this.b = afVar;
        this.a = aeVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((TvShow) obj);
    }

    public void a(TvShow tvShow) {
        if (tvShow != null) {
            this.b.f = this.b.a(tvShow);
            this.a.a(this.b.f);
        }
    }
}
