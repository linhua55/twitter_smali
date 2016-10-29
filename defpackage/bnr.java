package defpackage;

import bnq;
import com.twitter.library.provider.e;

/* compiled from: Twttr */
/* renamed from: bnr */
class bnr implements Runnable {
    final /* synthetic */ bnq a;

    bnr(bnq bnq) {
        this.a = bnq;
    }

    public void run() {
        e a = bnq.a(this.a);
        bnq.c(this.a).a(this.a.N().c, bnq.b(this.a), true, a);
        a.a();
    }
}
