package com.twitter.library.media.manager;

import com.twitter.media.request.a;
import java.util.concurrent.Callable;

/* compiled from: Twttr */
class n implements Callable<Void> {
    final /* synthetic */ a a;
    final /* synthetic */ l b;

    n(l lVar, a aVar) {
        this.b = lVar;
        this.a = aVar;
    }

    public /* synthetic */ Object call() throws Exception {
        return a();
    }

    public Void a() throws Exception {
        l.a(this.b).h(this.a);
        return null;
    }
}
