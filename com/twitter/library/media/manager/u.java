package com.twitter.library.media.manager;

import com.twitter.media.request.g;
import cuv;
import java.io.OutputStream;

/* compiled from: Twttr */
class u implements cuv<RES> {
    final /* synthetic */ g a;
    final /* synthetic */ t b;

    u(t tVar, g gVar) {
        this.b = tVar;
        this.a = gVar;
    }

    public boolean a(RES res, OutputStream outputStream) {
        return this.b.a(this.a, res, outputStream);
    }
}
