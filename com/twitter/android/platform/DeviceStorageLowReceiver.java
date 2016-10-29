package com.twitter.android.platform;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* compiled from: Twttr */
public class DeviceStorageLowReceiver extends BroadcastReceiver {
    private boolean a;

    public DeviceStorageLowReceiver() {
        this.a = false;
    }

    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.DEVICE_STORAGE_LOW".equals(intent.getAction())) {
            this.a = true;
        }
    }

    public boolean a() {
        return this.a;
    }
}
