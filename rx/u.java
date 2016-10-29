package rx;

import defpackage.cyr;
import defpackage.dbh;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public abstract class u implements an {
    public abstract an a(cyr cyr);

    public abstract an a(cyr cyr, long j, TimeUnit timeUnit);

    public an a(cyr cyr, long j, long j2, TimeUnit timeUnit) {
        long toNanos = timeUnit.toNanos(j2);
        long toNanos2 = TimeUnit.MILLISECONDS.toNanos(c());
        long toNanos3 = toNanos2 + timeUnit.toNanos(j);
        dbh dbh = new dbh();
        cyr vVar = new v(this, toNanos2, toNanos3, dbh, cyr, toNanos);
        dbh dbh2 = new dbh();
        dbh.a(dbh2);
        dbh2.a(a(vVar, j, timeUnit));
        return dbh;
    }

    public long c() {
        return System.currentTimeMillis();
    }
}
