package com.twitter.android.moments.ui.fullscreen;

import acc;
import com.twitter.model.moments.viewmodels.a;
import com.twitter.util.collection.x;

/* compiled from: Twttr */
class ca extends acc<Boolean> {
    final /* synthetic */ a a;
    final /* synthetic */ x b;
    final /* synthetic */ bt c;

    ca(bt btVar, a aVar, x xVar) {
        this.c = btVar;
        this.a = aVar;
        this.b = xVar;
    }

    public /* synthetic */ void b_(Object obj) {
        a((Boolean) obj);
    }

    public void a(Boolean bool) {
        if (bool.booleanValue()) {
            bt.k(this.c).a(bt.a(this.c, this.a, this.b, bt.j(this.c)));
        } else {
            bt.a(this.c).finish();
        }
    }
}
