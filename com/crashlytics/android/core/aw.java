package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
class aw extends BroadcastReceiver {
    final /* synthetic */ av a;

    aw(av avVar) {
        this.a = avVar;
    }

    public void onReceive(Context context, Intent intent) {
        this.a.h = true;
    }
}
