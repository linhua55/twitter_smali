package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class k extends Handler {
    final /* synthetic */ j a;

    k(j jVar, Looper looper) {
        this.a = jVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        this.a.a(message);
    }
}
