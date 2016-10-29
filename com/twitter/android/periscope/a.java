package com.twitter.android.periscope;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.support.annotation.VisibleForTesting;
import com.twitter.library.client.az;
import dbx;
import dby;
import de.greenrobot.event.c;
import java.util.concurrent.Executor;
import tv.periscope.android.api.ApiRunnable;
import tv.periscope.android.api.PublicApiManager;

/* compiled from: Twttr */
class a extends PublicApiManager {
    private final az a;

    a(Context context, c cVar, dbx dbx, dby dby, Executor executor) {
        this(context, cVar, dbx, dby, executor, new Handler(Looper.getMainLooper()), az.a(context));
    }

    @VisibleForTesting
    a(Context context, c cVar, dbx dbx, dby dby, Executor executor, Handler handler, az azVar) {
        super(context, cVar, executor, false);
        this.a = azVar;
        registerApiEventHandler(new d(handler, azVar, dbx, cVar));
    }

    public void bind() {
    }

    public void unbind() {
    }

    protected String execute(ApiRunnable apiRunnable) {
        return this.a.a(new c(apiRunnable));
    }
}
