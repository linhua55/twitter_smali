package com.google.android.gms.iid;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class b extends Handler {
    final /* synthetic */ InstanceIDListenerService a;

    b(InstanceIDListenerService instanceIDListenerService, Looper looper) {
        this.a = instanceIDListenerService;
        super(looper);
    }

    public void handleMessage(Message message) {
        this.a.a(message, MessengerCompat.a(message));
    }
}
