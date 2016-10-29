package rx.internal.operators;

import cyw;
import rx.am;
import rx.an;
import rx.internal.util.s;
import rx.o;
import rx.p;

/* compiled from: Twttr */
final class bs implements p<R> {
    final /* synthetic */ boolean a;
    final /* synthetic */ cyw b;
    final /* synthetic */ o c;

    bs(boolean z, cyw cyw, o oVar) {
        this.a = z;
        this.b = cyw;
        this.c = oVar;
    }

    public /* synthetic */ void call(Object obj) {
        a((am) obj);
    }

    public void a(am<? super R> amVar) {
        an onSubscribePublishMulticast = new OnSubscribePublishMulticast(s.c, this.a);
        an btVar = new bt(this, amVar, onSubscribePublishMulticast);
        amVar.a(onSubscribePublishMulticast);
        amVar.a(btVar);
        ((o) this.b.a(o.a(onSubscribePublishMulticast))).a(btVar);
        this.c.a(onSubscribePublishMulticast.e());
    }
}
