package com.twitter.library.media.widget;

import com.twitter.library.media.manager.d;
import com.twitter.util.concurrent.e;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
class f implements e<d> {
    final /* synthetic */ j a;
    final /* synthetic */ AnimatedGifView b;

    f(AnimatedGifView animatedGifView, j jVar) {
        this.b = animatedGifView;
        this.a = jVar;
    }

    public void a(d dVar) {
        this.b.post(new g(this, dVar));
    }
}
