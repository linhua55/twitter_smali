package com.facebook.imagepipeline.producers;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: Twttr */
class an {
    private static ScheduledExecutorService a;

    static ScheduledExecutorService a() {
        if (a == null) {
            a = Executors.newSingleThreadScheduledExecutor();
        }
        return a;
    }
}
