package rx.internal.schedulers;

import defpackage.cyr;
import rx.u;

/* compiled from: Twttr */
class z implements cyr {
    private final cyr a;
    private final u b;
    private final long c;

    public z(cyr cyr, u uVar, long j) {
        this.a = cyr;
        this.b = uVar;
        this.c = j;
    }

    public void a() {
        if (!this.b.b()) {
            long c = this.c - this.b.c();
            if (c > 0) {
                try {
                    Thread.sleep(c);
                } catch (Throwable e) {
                    Thread.currentThread().interrupt();
                    throw new RuntimeException(e);
                }
            }
            if (!this.b.b()) {
                this.a.a();
            }
        }
    }
}
