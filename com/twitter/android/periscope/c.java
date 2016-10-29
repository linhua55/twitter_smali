package com.twitter.android.periscope;

import android.support.annotation.VisibleForTesting;
import com.twitter.internal.android.service.AsyncOperation;
import tv.periscope.android.api.ApiRunnable;

@VisibleForTesting
/* compiled from: Twttr */
class c extends AsyncOperation<Void, Void> {
    final ApiRunnable a;

    protected /* synthetic */ Object c() {
        return b();
    }

    protected /* synthetic */ Object d() throws InterruptedException {
        return a();
    }

    c(ApiRunnable apiRunnable) {
        super("PsApi");
        this.a = apiRunnable;
    }

    protected Void a() throws InterruptedException {
        this.a.run();
        return null;
    }

    protected Void b() {
        return null;
    }
}
