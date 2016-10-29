package com.twitter.android.eventtimelines.tv.show;

/* compiled from: Twttr */
class n implements ae {
    final /* synthetic */ TvShowActivity a;

    n(TvShowActivity tvShowActivity) {
        this.a = tvShowActivity;
    }

    public void a(aw awVar) {
        this.a.m().a(awVar.b.toString());
        this.a.j = awVar.f;
        this.a.k = awVar;
        this.a.g.a = awVar.h;
        this.a.g.b = awVar.c;
        if (this.a.i != null) {
            this.a.i.a(awVar.c, this.a.h.a(awVar.d));
        }
        this.a.E();
        this.a.b(this.a.N_());
    }
}
