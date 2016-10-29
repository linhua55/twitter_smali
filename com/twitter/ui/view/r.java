package com.twitter.ui.view;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class r extends Handler {
    private final p a;

    r(p pVar) {
        super(Looper.getMainLooper());
        this.a = pVar;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case p.View_android_focusable /*1*/:
                p.a(this.a, true);
            case p.View_paddingStart /*2*/:
                p.a(this.a, false);
            case p.View_paddingEnd /*3*/:
                p.a(this.a);
            default:
                throw new IllegalArgumentException("Unknown message!");
        }
    }
}
