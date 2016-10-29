package com.twitter.library.av;

import android.os.Handler;
import android.os.HandlerThread;

/* compiled from: Twttr */
public class q {
    private static q a;
    private final Handler b;

    static {
        a = new q();
    }

    public static q a() {
        return a;
    }

    q() {
        HandlerThread handlerThread = new HandlerThread(q.class.getSimpleName());
        handlerThread.start();
        this.b = new Handler(handlerThread.getLooper());
    }

    public Handler b() {
        return this.b;
    }
}
