package com.twitter.model.people;

import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cp;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class k extends com.twitter.util.serialization.k<TwitterUser> {
    private k() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, TwitterUser twitterUser) throws IOException {
        qVar.b(twitterUser.bf_());
    }

    protected TwitterUser a(p pVar, int i) throws IOException, ClassNotFoundException {
        return (TwitterUser) new cp().a(pVar.f()).q();
    }
}
