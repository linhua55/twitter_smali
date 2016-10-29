package com.twitter.android.initialization;

import android.content.Context;
import android.content.IntentFilter;
import com.twitter.android.GCMChangeReceiver;
import com.twitter.android.client.AppBroadcastReceiver;
import com.twitter.library.provider.ck;
import defpackage.aof;

/* compiled from: Twttr */
public class AppGlobalInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        context.registerReceiver(new AppBroadcastReceiver(), new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE").addAction("android.net.wifi.WIFI_STATE_CHANGED");
        context.registerReceiver(new GCMChangeReceiver(), GCMChangeReceiver.a, ck.a, null);
    }
}
