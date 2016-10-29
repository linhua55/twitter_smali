package com.twitter.android.moments.ui.fullscreen;

import adg;
import com.twitter.model.moments.a;
import cyw;
import rx.w;

/* compiled from: Twttr */
class ap implements cyw<a, w<Boolean>> {
    final /* synthetic */ adg a;
    final /* synthetic */ ao b;

    ap(ao aoVar, adg adg) {
        this.b = aoVar;
        this.a = adg;
    }

    public w<Boolean> a(a aVar) {
        return ao.b(this.a, aVar).a(ao.b(this.b).a(ao.a(this.b).getResources(), ao.a(this.b).getSupportFragmentManager(), aVar));
    }
}
