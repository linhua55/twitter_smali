package com.twitter.android.alerts.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import defpackage.sl;

/* compiled from: Twttr */
public class ConnectivityChangedReceiver extends BroadcastReceiver {
    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
    }

    private static void b(Context context) {
        sl.a(context).b(a(context));
    }

    public void onReceive(Context context, Intent intent) {
        b(context);
    }
}
