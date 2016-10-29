package com.google.android.gms.common.api.internal;

import com.google.android.gms.internal.vy;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class ak {
    private static final ExecutorService a;

    static {
        a = Executors.newFixedThreadPool(2, new vy("GAC_Executor"));
    }

    public static ExecutorService a() {
        return a;
    }
}
