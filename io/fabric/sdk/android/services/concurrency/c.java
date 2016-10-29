package io.fabric.sdk.android.services.concurrency;

import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* compiled from: Twttr */
class c extends FutureTask<Result> {
    final /* synthetic */ AsyncTask a;

    c(AsyncTask asyncTask, Callable callable) {
        this.a = asyncTask;
        super(callable);
    }

    protected void done() {
        try {
            this.a.d(get());
        } catch (Throwable e) {
            Log.w("AsyncTask", e);
        } catch (ExecutionException e2) {
            throw new RuntimeException("An error occured while executing doInBackground()", e2.getCause());
        } catch (CancellationException e3) {
            this.a.d(null);
        }
    }
}
