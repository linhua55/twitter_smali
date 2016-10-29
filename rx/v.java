package rx;

import defpackage.cyr;
import defpackage.dbh;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
class v implements cyr {
    long a;
    long b;
    long c;
    final /* synthetic */ long d;
    final /* synthetic */ long e;
    final /* synthetic */ dbh f;
    final /* synthetic */ cyr g;
    final /* synthetic */ long h;
    final /* synthetic */ u i;

    v(u uVar, long j, long j2, dbh dbh, cyr cyr, long j3) {
        this.i = uVar;
        this.d = j;
        this.e = j2;
        this.f = dbh;
        this.g = cyr;
        this.h = j3;
        this.b = this.d;
        this.c = this.e;
    }

    public void a() {
        if (!this.f.b()) {
            long j;
            this.g.a();
            long toNanos = TimeUnit.MILLISECONDS.toNanos(this.i.c());
            long j2;
            if (t.a + toNanos < this.b || toNanos >= (this.b + this.h) + t.a) {
                j = this.h + toNanos;
                j2 = this.h;
                long j3 = this.a + 1;
                this.a = j3;
                this.c = j - (j2 * j3);
            } else {
                j = this.c;
                j2 = this.a + 1;
                this.a = j2;
                j += j2 * this.h;
            }
            this.b = toNanos;
            this.f.a(this.i.a(this, j - toNanos, TimeUnit.NANOSECONDS));
        }
    }
}
