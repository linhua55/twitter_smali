package defpackage;

import com.facebook.cache.common.a;

/* compiled from: Twttr */
/* renamed from: ed */
class ed implements Runnable {
    final /* synthetic */ a a;
    final /* synthetic */ gj b;
    final /* synthetic */ eb c;

    ed(eb ebVar, a aVar, gj gjVar) {
        this.c = ebVar;
        this.a = aVar;
        this.b = gjVar;
    }

    public void run() {
        try {
            this.c.b(this.a, this.b);
        } finally {
            this.c.g.b(this.a, this.b);
            gj.d(this.b);
        }
    }
}
