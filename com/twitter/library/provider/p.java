package com.twitter.library.provider;

import com.twitter.library.database.dm.ShareHistoryTable.Type;
import com.twitter.model.core.TwitterUser;
import com.twitter.util.object.f;
import com.twitter.util.serialization.d;
import com.twitter.util.serialization.q;
import com.twitter.util.serialization.s;
import java.io.IOException;

/* compiled from: Twttr */
class p extends d<m, o> {
    private p() {
    }

    protected /* synthetic */ f b() {
        return a();
    }

    protected void a(q qVar, m mVar) throws IOException {
        qVar.a(mVar.b, TwitterUser.a).a(mVar.d, s.a(Type.class));
    }

    protected o a() {
        return new o();
    }

    protected void a(com.twitter.util.serialization.p pVar, o oVar, int i) throws IOException, ClassNotFoundException {
        oVar.a((TwitterUser) TwitterUser.a.c(pVar)).a((Type) s.a(Type.class).c(pVar));
    }
}
