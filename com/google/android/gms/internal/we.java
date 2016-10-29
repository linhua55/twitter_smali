package com.google.android.gms.internal;

import android.os.StrictMode;
import android.os.StrictMode.ThreadPolicy;
import java.util.concurrent.Callable;

public class we {
    public static <T> T a(Callable<T> callable) {
        T call;
        ThreadPolicy threadPolicy = StrictMode.getThreadPolicy();
        try {
            StrictMode.setThreadPolicy(ThreadPolicy.LAX);
            call = callable.call();
        } catch (Throwable th) {
            call = null;
        } finally {
            StrictMode.setThreadPolicy(threadPolicy);
        }
        return call;
    }
}
