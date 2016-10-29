package com.twitter.android;

import android.os.Handler;
import android.os.Message;
import java.lang.ref.WeakReference;
import tv.periscope.chatman.api.WireMessage;

/* compiled from: Twttr */
class mq extends Handler {
    private final WeakReference<ProfileActivity> a;

    mq(ProfileActivity profileActivity) {
        this.a = new WeakReference(profileActivity);
    }

    public void handleMessage(Message message) {
        ProfileActivity profileActivity = (ProfileActivity) this.a.get();
        if (profileActivity != null) {
            switch (message.what) {
                case WireMessage.WIRE_CONTROL /*2*/:
                    profileActivity.a(message.arg1, message.arg2);
                default:
            }
        }
    }
}
