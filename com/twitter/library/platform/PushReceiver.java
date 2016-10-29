package com.twitter.library.platform;

import android.content.Context;
import com.google.android.gcm.GCMBroadcastReceiver;

/* compiled from: Twttr */
public class PushReceiver extends GCMBroadcastReceiver {
    protected String a(Context context) {
        return PushService.class.getName();
    }
}
