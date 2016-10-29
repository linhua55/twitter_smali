package com.evernote.android.job.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build.VERSION;
import android.os.PowerManager;
import android.support.v4.net.ConnectivityManagerCompat;
import com.evernote.android.job.JobRequest$NetworkType;

/* compiled from: Twttr */
public final class a {
    @TargetApi(17)
    public static boolean a(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return false;
        }
        int intExtra = registerReceiver.getIntExtra("plugged", 0);
        if (intExtra == 1 || intExtra == 2 || (VERSION.SDK_INT >= 17 && intExtra == 4)) {
            return true;
        }
        return false;
    }

    public static boolean b(Context context) {
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        if (VERSION.SDK_INT >= 23) {
            boolean z;
            if (powerManager.isDeviceIdleMode() || !powerManager.isInteractive()) {
                z = true;
            } else {
                z = false;
            }
            return z;
        } else if (VERSION.SDK_INT >= 20) {
            if (powerManager.isInteractive()) {
                return false;
            }
            return true;
        } else if (powerManager.isScreenOn()) {
            return false;
        } else {
            return true;
        }
    }

    public static JobRequest$NetworkType c(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnectedOrConnecting()) {
            return JobRequest$NetworkType.ANY;
        }
        return ConnectivityManagerCompat.isActiveNetworkMetered(connectivityManager) ? JobRequest$NetworkType.CONNECTED : JobRequest$NetworkType.UNMETERED;
    }
}
