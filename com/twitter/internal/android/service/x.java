package com.twitter.internal.android.service;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class x extends ThreadPoolExecutor {
    public x(int i) {
        super(i, ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED, 60, TimeUnit.SECONDS, new PriorityBlockingQueue(11));
    }

    protected <S> RunnableFuture<S> newTaskFor(Runnable runnable, S s) {
        if (runnable instanceof w) {
            runnable = (w) runnable;
        } else {
            Object yVar = new y(this, 1, runnable);
        }
        return new v(runnable, s);
    }

    public void execute(Runnable runnable) {
        if (!(runnable instanceof v)) {
            runnable = newTaskFor(runnable, null);
        }
        super.execute(runnable);
    }
}
