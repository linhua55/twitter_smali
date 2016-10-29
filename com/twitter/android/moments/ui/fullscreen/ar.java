package com.twitter.android.moments.ui.fullscreen;

import cyw;
import rx.w;

/* compiled from: Twttr */
class ar implements cyw<Boolean, w<Boolean>> {
    final /* synthetic */ ao a;

    ar(ao aoVar) {
        this.a = aoVar;
    }

    public w<Boolean> a(Boolean bool) {
        if (bool.booleanValue()) {
            return ao.c(this.a).a();
        }
        return w.a(Boolean.valueOf(false));
    }
}
