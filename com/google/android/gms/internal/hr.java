package com.google.android.gms.internal;

import android.os.Handler;
import java.util.concurrent.Executor;

class hr implements Executor {
    final /* synthetic */ Handler a;
    final /* synthetic */ hq b;

    hr(hq hqVar, Handler handler) {
        this.b = hqVar;
        this.a = handler;
    }

    public void execute(Runnable runnable) {
        this.a.post(runnable);
    }
}
