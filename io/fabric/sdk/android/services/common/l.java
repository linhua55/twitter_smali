package io.fabric.sdk.android.services.common;

import android.os.Process;

/* compiled from: Twttr */
public abstract class l implements Runnable {
    protected abstract void a();

    public final void run() {
        Process.setThreadPriority(10);
        a();
    }
}
