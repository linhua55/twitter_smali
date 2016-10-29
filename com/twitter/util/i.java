package com.twitter.util;

import android.os.AsyncTask;

/* compiled from: Twttr */
public abstract class i<Params, Progress, Result> extends AsyncTask<Params, Progress, Result> {
    public void a(Params... paramsArr) {
        executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, paramsArr);
    }
}
