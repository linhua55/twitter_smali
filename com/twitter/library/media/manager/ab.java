package com.twitter.library.media.manager;

import com.twitter.media.request.ResourceResponse;
import com.twitter.media.request.g;
import com.twitter.media.request.i;

/* compiled from: Twttr */
class ab implements Runnable {
    final /* synthetic */ t a;
    final /* synthetic */ ac b;
    final /* synthetic */ Object c;
    final /* synthetic */ v d;

    ab(v vVar, t tVar, ac acVar, Object obj) {
        this.d = vVar;
        this.a = tVar;
        this.b = acVar;
        this.c = obj;
    }

    public void run() {
        if (this.a != null) {
            for (ag agVar : this.b.a) {
                g gVar = agVar.a;
                ResourceResponse a = this.a.a(gVar, this.c, agVar.c);
                agVar.b.set(a);
                if (!agVar.b.isCancelled()) {
                    i E = gVar.E();
                    if (E != null) {
                        E.a(a);
                    }
                }
            }
        }
        this.b.b();
    }
}
