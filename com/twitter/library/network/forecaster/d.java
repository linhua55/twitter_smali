package com.twitter.library.network.forecaster;

import com.twitter.platform.n;
import com.twitter.util.y;
import com.twitter.util.z;

/* compiled from: Twttr */
class d implements z<com.twitter.library.client.z> {
    final /* synthetic */ y a;
    final /* synthetic */ c b;

    d(c cVar, y yVar) {
        this.b = cVar;
        this.a = yVar;
    }

    public void a(com.twitter.library.client.z zVar) {
        this.b.a(new n(zVar.a));
        this.a.b(this);
    }
}
