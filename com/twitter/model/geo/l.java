package com.twitter.model.geo;

import com.twitter.model.geo.TwitterPlace.PlaceType;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class l extends d<TwitterPlace, k> {
    private l() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, TwitterPlace twitterPlace) throws IOException {
        qVar.b(twitterPlace.b).a(twitterPlace.c, s.a(PlaceType.class)).b(twitterPlace.d).b(twitterPlace.f).a(twitterPlace.g, a.a).a(twitterPlace.h, d.a).b(twitterPlace.i).b(twitterPlace.j).a(twitterPlace.k, TwitterPlace.a).b(twitterPlace.l).b(twitterPlace.m).a(twitterPlace.e, VendorInfo.a);
    }

    protected k a() {
        return new k();
    }

    protected void a(p pVar, k kVar, int i) throws IOException, ClassNotFoundException {
        kVar.a(pVar.i()).a((PlaceType) s.a(PlaceType.class).c(pVar)).b(pVar.i()).c(pVar.i()).a((a) a.a.a(pVar)).a((d) d.a.a(pVar)).d(pVar.i()).e(pVar.i()).a((TwitterPlace) TwitterPlace.a.a(pVar)).f(pVar.i()).g(pVar.i()).a((VendorInfo) VendorInfo.a.a(pVar));
    }
}
