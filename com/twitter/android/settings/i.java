package com.twitter.android.settings;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;

/* compiled from: Twttr */
class i implements OnCancelListener {
    final /* synthetic */ MobileNotificationsActivity a;

    i(MobileNotificationsActivity mobileNotificationsActivity) {
        this.a = mobileNotificationsActivity;
    }

    public void onCancel(DialogInterface dialogInterface) {
        this.a.c(false);
    }
}
