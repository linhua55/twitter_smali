package com.twitter.library.media.widget;

import com.twitter.util.concurrent.e;
import com.twitter.util.concurrent.j;

/* compiled from: Twttr */
class h implements e<Exception> {
    final /* synthetic */ j a;
    final /* synthetic */ AnimatedGifView b;

    h(AnimatedGifView animatedGifView, j jVar) {
        this.b = animatedGifView;
        this.a = jVar;
    }

    public void a(Exception exception) {
        this.b.post(new i(this));
    }
}
