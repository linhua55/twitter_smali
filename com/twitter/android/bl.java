package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import boc;
import defpackage.cey;
import java.lang.ref.WeakReference;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class bl extends Handler {
    private final WeakReference<ChangeScreenNameActivity> a;

    bl(ChangeScreenNameActivity changeScreenNameActivity) {
        this.a = new WeakReference(changeScreenNameActivity);
    }

    public void handleMessage(Message message) {
        ChangeScreenNameActivity changeScreenNameActivity = (ChangeScreenNameActivity) this.a.get();
        if (changeScreenNameActivity != null) {
            switch (message.what) {
                case WireMessage.WIRE_AUTH /*3*/:
                    CharSequence text = changeScreenNameActivity.c.getText();
                    boolean matches = cey.d.matcher(text).matches();
                    if (cey.a.matcher(text).matches() && !matches) {
                        changeScreenNameActivity.b(boc.a(changeScreenNameActivity, changeScreenNameActivity.ab(), 2, text.toString()), 1);
                        break;
                    }
                    changeScreenNameActivity.a(changeScreenNameActivity.c, changeScreenNameActivity.e, changeScreenNameActivity.getString(matches ? 2131363794 : 2131363793));
                    changeScreenNameActivity.a = 0;
                    break;
                    break;
            }
            changeScreenNameActivity.a();
        }
    }

    public void a(int i) {
        removeMessages(i);
        sendEmptyMessageDelayed(i, 500);
    }
}
