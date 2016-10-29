package com.twitter.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
class pw extends BroadcastReceiver {
    final /* synthetic */ SecuritySettingsActivity a;

    pw(SecuritySettingsActivity securitySettingsActivity) {
        this.a = securitySettingsActivity;
    }

    public void onReceive(Context context, Intent intent) {
        if (this.a.f) {
            this.a.f();
            this.a.f = false;
        }
    }
}
