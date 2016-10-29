package com.twitter.android.moments.ui.fullscreen;

import acc;
import com.twitter.model.core.Tweet;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
class cw extends acc<x<Tweet>> {
    final /* synthetic */ cv a;

    cw(cv cvVar) {
        this.a = cvVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((x) obj);
    }

    public void a(x<Tweet> xVar) {
        if (xVar.c()) {
            this.a.a.a(this.a.c, (Tweet) xVar.b());
        }
    }
}
