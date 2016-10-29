package com.twitter.android.settings;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.twitter.library.platform.notifications.PushRegistration;

/* compiled from: Twttr */
class m extends BroadcastReceiver {
    final /* synthetic */ MobileNotificationsActivity a;

    private m(MobileNotificationsActivity mobileNotificationsActivity) {
        this.a = mobileNotificationsActivity;
    }

    public void onReceive(Context context, Intent intent) {
        this.a.c(PushRegistration.e.equals(intent.getAction()));
        this.a.removeDialog(1);
    }
}
