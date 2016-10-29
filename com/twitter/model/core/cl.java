package com.twitter.model.core;

import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class cl extends d<TwitterSocialProof, ck> {
    private cl() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, TwitterSocialProof twitterSocialProof) throws IOException {
        qVar.e(twitterSocialProof.b).e(twitterSocialProof.d).e(twitterSocialProof.e).e(twitterSocialProof.f).b(twitterSocialProof.c).e(twitterSocialProof.g).b(twitterSocialProof.h).e(twitterSocialProof.i);
    }

    protected ck a() {
        return new ck();
    }

    protected void a(p pVar, ck ckVar, int i) throws IOException, ClassNotFoundException {
        ckVar.a(pVar.e()).b(pVar.e()).c(pVar.e()).d(pVar.e()).a(pVar.i()).e(pVar.e()).b(pVar.i()).g(pVar.e());
    }
}
