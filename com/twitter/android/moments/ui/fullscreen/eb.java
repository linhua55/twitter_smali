package com.twitter.android.moments.ui.fullscreen;

import com.twitter.model.moments.a;
import cys;

/* compiled from: Twttr */
class eb implements cys<Boolean> {
    final /* synthetic */ a a;
    final /* synthetic */ dz b;

    eb(dz dzVar, a aVar) {
        this.b = dzVar;
        this.a = aVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((Boolean) obj);
    }

    public void a(Boolean bool) {
        if (bool.booleanValue()) {
            this.b.i.a(this.b.a, this.b.a.getString(2131361966, new Object[]{this.a.e}), 1).show();
            this.b.g.a();
        }
    }
}
