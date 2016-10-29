package com.twitter.android.revenue;

import bbl;
import com.twitter.library.provider.di;
import com.twitter.util.collection.MutableList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

/* compiled from: Twttr */
public class j {
    private final ExecutorService a;
    private final di b;

    j(di diVar) {
        this.a = Executors.newSingleThreadExecutor();
        this.b = diVar;
    }

    public Future a(a aVar) {
        return this.a.submit(new k(this, aVar));
    }

    public Future a(long j) {
        return this.a.submit(new l(this, j));
    }

    public Future b(long j) {
        return this.a.submit(new m(this, j));
    }

    public Future a(List<a> list, long j) {
        if (list.isEmpty()) {
            return null;
        }
        List a = MutableList.a();
        for (a a2 : list) {
            a.add(Long.valueOf(a2.a()));
        }
        return this.a.submit(new n(this, j, a));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public android.database.Cursor a(com.twitter.library.provider.di r3, defpackage.aow r4) {
        /*
        r2 = this;
        r0 = new java.util.concurrent.FutureTask;
        r1 = new com.twitter.android.revenue.o;
        r1.<init>(r2, r3, r4);
        r0.<init>(r1);
        r1 = r2.a;
        r1.submit(r0);
        r0 = r0.get();	 Catch:{ InterruptedException -> 0x0016, ExecutionException -> 0x0023 }
        r0 = (android.database.Cursor) r0;	 Catch:{ InterruptedException -> 0x0016, ExecutionException -> 0x0023 }
    L_0x0015:
        return r0;
    L_0x0016:
        r0 = move-exception;
        r1 = "queryAdsView";
        r0 = r2.a(r0, r1);
        bbn.a(r0);
    L_0x0021:
        r0 = 0;
        goto L_0x0015;
    L_0x0023:
        r0 = move-exception;
        r1 = "queryAdsView";
        r0 = r2.a(r0, r1);
        bbn.a(r0);
        goto L_0x0021;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.twitter.android.revenue.j.a(com.twitter.library.provider.di, aow):android.database.Cursor");
    }

    private bbl a(String str) {
        return a(new Exception("db_operation_failed"), str);
    }

    private bbl a(Exception exception, String str) {
        return new bbl(exception).a("class", getClass()).a("method", str);
    }
}
