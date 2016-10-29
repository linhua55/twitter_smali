package com.twitter.android.moments.ui.animation;

import cyw;

/* compiled from: Twttr */
class o implements cyw<Boolean, rx.o<Boolean>> {
    final /* synthetic */ m a;

    o(m mVar) {
        this.a = mVar;
    }

    public rx.o<Boolean> a(Boolean bool) {
        if (bool.booleanValue()) {
            return m.a(this.a).a();
        }
        return m.b(this.a).a("http://ton.twimg.com/assets/additional_moments_animations.zip", m.a(this.a).e(), m.a(this.a).f()).g(new q(this)).f(new p(this));
    }
}
