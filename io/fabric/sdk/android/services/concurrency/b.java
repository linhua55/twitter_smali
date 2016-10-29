package io.fabric.sdk.android.services.concurrency;

import android.os.Process;

/* compiled from: Twttr */
class b extends i<Params, Result> {
    final /* synthetic */ AsyncTask a;

    b(AsyncTask asyncTask) {
        this.a = asyncTask;
        super();
    }

    public Result call() throws Exception {
        this.a.n.set(true);
        Process.setThreadPriority(10);
        return this.a.e(this.a.a(this.b));
    }
}
