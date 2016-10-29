package com.twitter.util.concurrent;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;

/* compiled from: Twttr */
public class i implements Executor {
    public static final Executor a;
    public static final Executor b;
    protected final Handler c;
    private final boolean d;

    static {
        a = new i(Looper.getMainLooper(), false);
        b = new i(Looper.getMainLooper(), true);
    }

    public i(Looper looper, boolean z) {
        this.c = new Handler(looper);
        this.d = z;
    }

    public void execute(Runnable runnable) {
        if (this.d || Thread.currentThread() != this.c.getLooper().getThread()) {
            this.c.post(runnable);
        } else {
            runnable.run();
        }
    }
}
