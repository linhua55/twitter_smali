package com.twitter.library.network.livepipeline;

import com.twitter.model.livepipeline.h;
import cyw;

/* compiled from: Twttr */
class e implements cyw<com.twitter.model.livepipeline.e, Boolean> {
    final /* synthetic */ b a;

    e(b bVar) {
        this.a = bVar;
    }

    public Boolean a(com.twitter.model.livepipeline.e eVar) {
        return Boolean.valueOf(eVar instanceof h);
    }
}
