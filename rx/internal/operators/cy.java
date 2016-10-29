package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import rx.s;

/* compiled from: Twttr */
class cy implements s {
    final AtomicLong a;
    final /* synthetic */ s b;
    final /* synthetic */ cx c;

    cy(cx cxVar, s sVar) {
        this.c = cxVar;
        this.b = sVar;
        this.a = new AtomicLong(0);
    }

    public void a(long j) {
        if (j > 0 && !this.c.b) {
            long min;
            long j2;
            do {
                j2 = this.a.get();
                min = Math.min(j, ((long) this.c.d.a) - j2);
                if (min == 0) {
                    return;
                }
            } while (!this.a.compareAndSet(j2, j2 + min));
            this.b.a(min);
        }
    }
}
