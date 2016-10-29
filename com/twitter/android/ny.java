package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;

/* compiled from: Twttr */
class ny extends Handler {
    private final WeakReference<ScrollingHeaderActivity> a;

    ny(ScrollingHeaderActivity scrollingHeaderActivity) {
        this.a = new WeakReference(scrollingHeaderActivity);
    }

    public void handleMessage(Message message) {
        ScrollingHeaderActivity scrollingHeaderActivity = (ScrollingHeaderActivity) this.a.get();
        if (scrollingHeaderActivity == null) {
            return;
        }
        if (message.what == 1) {
            scrollingHeaderActivity.a(false);
        } else if (message.what == 2) {
            scrollingHeaderActivity.f();
        }
    }
}
