package com.twitter.model.core;

import com.twitter.model.ads.AdvertiserType;
import com.twitter.model.businessprofiles.BusinessProfileState;
import com.twitter.model.geo.TwitterPlace;
import com.twitter.model.profile.ExtendedProfile;
import com.twitter.model.timeline.aj;
import com.twitter.util.collection.x;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import defpackage.cht;
import defpackage.cni;
import java.io.IOException;

/* compiled from: Twttr */
class cq extends d<TwitterUser, cp> {
    private cq() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, TwitterUser twitterUser) throws IOException {
        qVar.b(twitterUser.c).b(twitterUser.d).b(twitterUser.k).b(twitterUser.e).b(twitterUser.G).b(twitterUser.g).e(twitterUser.P).b(twitterUser.h).e(twitterUser.i).e(twitterUser.j).b(twitterUser.m).b(twitterUser.n).b(twitterUser.q).a(twitterUser.r, x.a(TwitterPlace.a)).e(twitterUser.v).b(twitterUser.Q).e(twitterUser.w).e(twitterUser.x).b(twitterUser.y).e(twitterUser.S).b(twitterUser.z).b(twitterUser.C).e(twitterUser.A).a(twitterUser.B, cni.a).a(twitterUser.D, bg.b).a(twitterUser.E, bg.b).b(twitterUser.f).b(twitterUser.H).b(twitterUser.p).b(twitterUser.o).b(twitterUser.I).b(twitterUser.J).e(twitterUser.K).e(twitterUser.u).a(twitterUser.t, ExtendedProfile.a).b(twitterUser.s).a(twitterUser.L, s.a(AdvertiserType.class)).a(twitterUser.T, aj.a).b(twitterUser.M).a(twitterUser.F, cht.a).a(twitterUser.N, s.a(BusinessProfileState.class)).b(twitterUser.O);
    }

    protected cp a() {
        return new cp();
    }

    protected void a(p pVar, cp cpVar, int i) throws IOException, ClassNotFoundException {
        cpVar.a(pVar.f()).a(pVar.i()).f(pVar.i()).b(pVar.i()).h(pVar.i()).d(pVar.i()).c(pVar.e()).e(pVar.i()).a(pVar.e()).b(pVar.e()).b(pVar.d()).c(pVar.d()).g(pVar.i()).a((x) x.a(TwitterPlace.a).a(pVar)).e(pVar.e()).b(pVar.f()).f(pVar.e()).g(pVar.e()).g(pVar.d()).i(pVar.e()).c(pVar.f()).d(pVar.f()).h(pVar.e()).a((cni) cni.a.a(pVar)).a((bg) bg.b.a(pVar)).b((bg) bg.b.a(pVar)).c(pVar.i()).i(pVar.i()).e(pVar.d()).d(pVar.d()).h(pVar.d()).i(pVar.d()).j(pVar.e()).d(pVar.e()).a((ExtendedProfile) ExtendedProfile.a.a(pVar)).f(pVar.d()).a((AdvertiserType) s.a(AdvertiserType.class).c(pVar)).a((aj) aj.a.a(pVar)).e(pVar.f()).a((cht) cht.a.a(pVar)).a((BusinessProfileState) s.a(BusinessProfileState.class).c(pVar)).j(pVar.d());
    }
}
