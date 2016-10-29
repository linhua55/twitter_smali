package com.twitter.ui.widget;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.lang.ref.WeakReference;
import tv.periscope.android.library.p;

/* compiled from: Twttr */
class ae extends Handler {
    private final WeakReference<Tooltip> a;

    ae(Tooltip tooltip) {
        super(Looper.getMainLooper());
        this.a = new WeakReference(tooltip);
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case p.View_android_focusable /*1*/:
                Tooltip tooltip = (Tooltip) this.a.get();
                if (tooltip != null) {
                    tooltip.a(true);
                }
            default:
        }
    }
}
