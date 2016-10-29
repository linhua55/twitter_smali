package com.twitter.library.media.manager;

import android.util.Pair;
import com.twitter.internal.android.service.ab;
import com.twitter.media.request.ResourceResponse.ResourceSource;
import com.twitter.media.request.g;

/* compiled from: Twttr */
class y extends ai<REQ, RES, RESP> {
    final /* synthetic */ String a;
    final /* synthetic */ boolean b;
    final /* synthetic */ v c;

    y(v vVar, t tVar, g gVar, String str, boolean z) {
        this.c = vVar;
        this.a = str;
        this.b = z;
        super(tVar, gVar);
    }

    public void a(ab<Pair<ResourceSource, RES>> abVar) {
        super.a(abVar);
        Pair pair = (Pair) abVar.b();
        if (pair != null && !isCancelled()) {
            this.c.obtainMessage(2, new af((ResourceSource) pair.first, pair.second, this.b, null)).sendToTarget();
        }
    }
}
