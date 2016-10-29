package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class f extends Handler {
    public f() {
        super(Looper.getMainLooper());
    }

    public void handleMessage(Message message) {
        e eVar = (e) message.obj;
        switch (message.what) {
            case p.View_android_focusable /*1*/:
                eVar.a.f(eVar.b[0]);
            case p.View_paddingStart /*2*/:
                eVar.a.b(eVar.b);
            default:
        }
    }
}
