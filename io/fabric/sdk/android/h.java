package io.fabric.sdk.android;

import java.util.concurrent.CountDownLatch;

/* compiled from: Twttr */
class h implements l {
    final CountDownLatch a;
    final /* synthetic */ int b;
    final /* synthetic */ f c;

    h(f fVar, int i) {
        this.c = fVar;
        this.b = i;
        this.a = new CountDownLatch(this.b);
    }

    public void a(Object obj) {
        this.a.countDown();
        if (this.a.getCount() == 0) {
            this.c.n.set(true);
            this.c.i.a(this.c);
        }
    }

    public void a(Exception exception) {
        this.c.i.a(exception);
    }
}
