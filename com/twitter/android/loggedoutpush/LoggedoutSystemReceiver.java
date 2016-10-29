package com.twitter.android.loggedoutpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
public class LoggedoutSystemReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        LoggedoutPushService.a(context);
    }
}
