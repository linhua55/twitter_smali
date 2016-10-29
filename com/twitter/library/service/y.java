package com.twitter.library.service;

import com.twitter.util.concurrent.n;

/* compiled from: Twttr */
class y implements n<aa> {
    final /* synthetic */ x a;

    y(x xVar) {
        this.a = xVar;
    }

    public /* synthetic */ Object call() {
        return a();
    }

    public aa a() {
        try {
            return this.a.R();
        } catch (InterruptedException e) {
            aa aaVar = new aa();
            aaVar.a(false);
            return aaVar;
        }
    }
}
