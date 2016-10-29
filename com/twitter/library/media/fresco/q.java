package com.twitter.library.media.fresco;

import com.twitter.media.request.ImageResponse;
import com.twitter.media.request.a;
import com.twitter.media.request.i;
import defpackage.bxp;

/* compiled from: Twttr */
public class q {
    private final a a;
    private final g b;
    private i<ImageResponse> c;
    private bxp d;
    private bxp e;
    private bxp f;

    public q(a aVar, g gVar) {
        this.a = aVar;
        this.b = gVar;
    }

    public q a(i<ImageResponse> iVar) {
        this.c = iVar;
        return this;
    }

    public q a(bxp bxp) {
        this.d = bxp;
        return this;
    }

    public q b(bxp bxp) {
        this.e = bxp;
        return this;
    }

    public q c(bxp bxp) {
        this.f = bxp;
        return this;
    }

    public o a() {
        return new o();
    }
}
