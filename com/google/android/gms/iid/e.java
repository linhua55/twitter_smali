package com.google.android.gms.iid;

import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.RemoteException;

final class e extends h {
    Handler a;
    final /* synthetic */ MessengerCompat b;

    e(MessengerCompat messengerCompat, Handler handler) {
        this.b = messengerCompat;
        this.a = handler;
    }

    public void a(Message message) throws RemoteException {
        message.arg2 = Binder.getCallingUid();
        this.a.dispatchMessage(message);
    }
}
