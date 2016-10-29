package com.twitter.android.widget;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ce extends Handler {
    private final WeakReference<ci> a;

    ce(ci ciVar) {
        this.a = new WeakReference(ciVar);
    }

    public void handleMessage(Message message) {
        ci ciVar = (ci) this.a.get();
        if (ciVar != null) {
            ciVar.hide();
        }
    }
}
