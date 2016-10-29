package com.twitter.library.av.playback;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: Twttr */
public abstract class bt<ReturnType> {
    public abstract ReturnType a();

    public ReturnType a(Handler handler, int i) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        Runnable buVar = new bu(this, atomicReference, countDownLatch);
        if (Looper.myLooper() == handler.getLooper()) {
            buVar.run();
        } else {
            handler.post(buVar);
            try {
                countDownLatch.await((long) i, TimeUnit.SECONDS);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
        }
        ReturnType returnType = atomicReference.get();
        if (returnType == null) {
            return a();
        }
        return returnType;
    }
}
