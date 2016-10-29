package com.twitter.media.service.core;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Map;

/* compiled from: Twttr */
class f extends Handler {
    private final Map<Integer, g> a;

    f(Looper looper, Map<Integer, g> map) {
        super(looper);
        this.a = map;
    }

    public void handleMessage(Message message) {
        int i = message.arg1;
        synchronized (this.a) {
            g gVar = (g) this.a.remove(Integer.valueOf(i));
        }
        if (gVar != null) {
            MediaServiceClient.b(gVar, message.getData());
        }
    }
}
