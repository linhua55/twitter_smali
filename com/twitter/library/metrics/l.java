package com.twitter.library.metrics;

import android.app.Activity;
import aru;
import com.twitter.app.common.util.h;

/* compiled from: Twttr */
class l implements h {
    final /* synthetic */ aru a;
    final /* synthetic */ k b;

    l(k kVar, aru aru) {
        this.b = kVar;
        this.a = aru;
    }

    public void a(Activity activity) {
        aru.b().a(true);
    }

    public void b(Activity activity) {
        this.a.a(false);
    }
}
