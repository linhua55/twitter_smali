package com.twitter.android.moments.ui.animation;

import acc;
import cfb;

/* compiled from: Twttr */
class n extends acc<Boolean> {
    final /* synthetic */ m a;

    n(m mVar) {
        this.a = mVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Boolean) obj);
    }

    public void a(Boolean bool) {
        cfb.b("moments_animations", "Animations loaded successfully: " + bool);
    }
}
