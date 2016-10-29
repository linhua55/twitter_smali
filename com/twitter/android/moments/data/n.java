package com.twitter.android.moments.data;

import android.os.Bundle;
import com.twitter.android.moments.viewmodels.k;
import com.twitter.library.client.bb;
import com.twitter.library.service.x;
import com.twitter.util.collection.r;

/* compiled from: Twttr */
class n implements bb {
    final /* synthetic */ m a;

    n(m mVar) {
        this.a = mVar;
    }

    public void a(int i, x xVar) {
    }

    public void a(int i, Bundle bundle, x xVar) {
    }

    public void b(int i, x xVar) {
        this.a.e = false;
        if (!xVar.U()) {
            this.a.d = true;
            this.a.b().a(new k(r.e(), r.e(), com.twitter.util.collection.n.g()));
        }
    }
}
