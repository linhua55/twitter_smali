package com.twitter.android.alerts.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import defpackage.sl;

/* compiled from: Twttr */
public class PowerStateChangedReceiver extends BroadcastReceiver {
    public static boolean a(Context context) {
        Intent registerReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        if (((double) (((float) registerReceiver.getIntExtra("level", -1)) / ((float) registerReceiver.getIntExtra("scale", -1)))) >= 0.15d) {
            return true;
        }
        return false;
    }

    public void onReceive(Context context, Intent intent) {
        sl.a(context).c(intent.getAction().equals("android.intent.action.BATTERY_LOW"));
    }
}
