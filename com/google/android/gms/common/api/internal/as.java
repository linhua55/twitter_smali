package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.vy;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public abstract class as {
    private static final ExecutorService a;

    static {
        a = new ThreadPoolExecutor(0, 4, 60, TimeUnit.SECONDS, new LinkedBlockingQueue(), new vy("GAC_Transform"));
    }

    public static ExecutorService a() {
        return a;
    }
}
