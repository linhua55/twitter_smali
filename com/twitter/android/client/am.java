package com.twitter.android.client;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* compiled from: Twttr */
class am extends Handler {
    am(Looper looper) {
        super(looper);
    }

    public void handleMessage(Message message) {
        post((Runnable) message.obj);
    }
}
