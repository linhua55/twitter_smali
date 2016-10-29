package com.twitter.app.common.app.internal;

import android.content.Context;
import android.os.AsyncTask;
import com.twitter.android.initialization.n;
import com.twitter.android.initialization.o;
import com.twitter.platform.t;
import defpackage.aog;
import defpackage.aoh;
import defpackage.aok;

/* compiled from: Twttr */
public class af extends n {
    private final boolean a;

    public af(boolean z) {
        this.a = z;
    }

    protected aoh a(Context context, t tVar) {
        return new aoh(context, AsyncTask.THREAD_POOL_EXECUTOR, AsyncTask.THREAD_POOL_EXECUTOR, tVar);
    }

    protected aog a() {
        return new n(this.a);
    }

    protected aok b() {
        return this.a ? null : new o(AsyncTask.THREAD_POOL_EXECUTOR);
    }
}
