package com.twitter.app.common.app.internal;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.platform.t;
import defpackage.aog;
import defpackage.aoh;
import defpackage.aok;

/* compiled from: Twttr */
public class n {
    protected aoh a(Context context, t tVar) {
        return new aoh(context, AsyncTask.THREAD_POOL_EXECUTOR, AsyncTask.THREAD_POOL_EXECUTOR, tVar);
    }

    protected aog a() {
        throw new UnsupportedOperationException("Implement provideInitializerProvider() in a subclass.");
    }

    protected aok b() {
        return null;
    }
}
