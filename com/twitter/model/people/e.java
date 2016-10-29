package com.twitter.model.people;

import com.twitter.model.core.Tweet;
import com.twitter.model.core.bf;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class e extends k<Tweet> {
    private e() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, Tweet tweet) throws IOException {
        qVar.b(tweet.H);
    }

    protected Tweet a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new bf().g(pVar.f()).a();
    }
}
