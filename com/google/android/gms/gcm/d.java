package com.google.android.gms.gcm;

import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

class d extends Handler {
    final /* synthetic */ c a;

    d(c cVar, Looper looper) {
        this.a = cVar;
        super(looper);
    }

    public void handleMessage(Message message) {
        if (message == null || !(message.obj instanceof Intent)) {
            Log.w("GCM", "Dropping invalid message");
        }
        Intent intent = (Intent) message.obj;
        if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
            c.a(this.a).add(intent);
        } else if (!c.a(this.a, intent)) {
            intent.setPackage(c.b(this.a).getPackageName());
            c.b(this.a).sendBroadcast(intent);
        }
    }
}
