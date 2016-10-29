package rx.internal.schedulers;

import java.util.concurrent.ThreadFactory;

/* compiled from: Twttr */
final class l {
    final int a;
    final m[] b;
    long c;

    l(ThreadFactory threadFactory, int i) {
        this.a = i;
        this.b = new m[i];
        for (int i2 = 0; i2 < i; i2++) {
            this.b[i2] = new m(threadFactory);
        }
    }

    public m a() {
        int i = this.a;
        if (i == 0) {
            return h.c;
        }
        m[] mVarArr = this.b;
        long j = this.c;
        this.c = 1 + j;
        return mVarArr[(int) (j % ((long) i))];
    }

    public void b() {
        for (m K_ : this.b) {
            K_.K_();
        }
    }
}
