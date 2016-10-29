package com.twitter.model.businessprofiles;

import com.twitter.model.core.TwitterUser;
import com.twitter.util.serialization.k;
import com.twitter.util.serialization.p;
import com.twitter.util.serialization.q;
import java.io.IOException;

/* compiled from: Twttr */
class s extends k<q> {
    private s() {
    }

    protected /* synthetic */ Object b(p pVar, int i) throws IOException, ClassNotFoundException {
        return a(pVar, i);
    }

    protected void a(q qVar, q qVar2) throws IOException {
        qVar.a(qVar2.b, ag.a).a(qVar2.c, com.twitter.util.serialization.s.a(ResponsivenessLevel.class)).a(qVar2.d, TwitterUser.a);
    }

    protected q a(p pVar, int i) throws IOException, ClassNotFoundException {
        return new q((ag) ag.a.a(pVar), (ResponsivenessLevel) com.twitter.util.serialization.s.a(ResponsivenessLevel.class).c(pVar), (TwitterUser) TwitterUser.a.a(pVar));
    }
}
