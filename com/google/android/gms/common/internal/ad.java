package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;

final class ad extends Handler {
    final /* synthetic */ ab a;

    public ad(ab abVar, Looper looper) {
        this.a = abVar;
        super(looper);
    }

    private void a(Message message) {
        ae aeVar = (ae) message.obj;
        aeVar.b();
        aeVar.d();
    }

    private boolean b(Message message) {
        return message.what == 2 || message.what == 1 || message.what == 5;
    }

    public void handleMessage(Message message) {
        if (this.a.c.get() != message.arg1) {
            if (b(message)) {
                a(message);
            }
        } else if ((message.what == 1 || message.what == 5) && !this.a.l()) {
            a(message);
        } else if (message.what == 3) {
            ConnectionResult connectionResult = new ConnectionResult(message.arg2, null);
            this.a.q.a(connectionResult);
            this.a.a(connectionResult);
        } else if (message.what == 4) {
            r0.b(4, null);
            if (this.a.x != null) {
                this.a.x.a(message.arg2);
            }
            this.a.a(message.arg2);
            this.a.a(4, 1, null);
        } else if (message.what == 2 && !this.a.e()) {
            a(message);
        } else if (b(message)) {
            ((ae) message.obj).c();
        } else {
            Log.wtf("GmsClient", "Don't know how to handle message: " + message.what, new Exception());
        }
    }
}
