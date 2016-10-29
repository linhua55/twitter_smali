package rx.internal.operators;

import rx.am;
import rx.s;

/* compiled from: Twttr */
class bt extends am<R> {
    final /* synthetic */ am a;
    final /* synthetic */ OnSubscribePublishMulticast b;
    final /* synthetic */ bs c;

    bt(bs bsVar, am amVar, OnSubscribePublishMulticast onSubscribePublishMulticast) {
        this.c = bsVar;
        this.a = amVar;
        this.b = onSubscribePublishMulticast;
    }

    public void b_(R r) {
        this.a.b_(r);
    }

    public void a(Throwable th) {
        this.b.K_();
        this.a.a(th);
    }

    public void bs_() {
        this.b.K_();
        this.a.bs_();
    }

    public void a(s sVar) {
        this.a.a(sVar);
    }
}
