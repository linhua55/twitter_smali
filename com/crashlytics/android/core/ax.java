package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
class ax extends BroadcastReceiver {
    final /* synthetic */ av a;

    ax(av avVar) {
        this.a = avVar;
    }

    public void onReceive(Context context, Intent intent) {
        this.a.h = false;
    }
}
