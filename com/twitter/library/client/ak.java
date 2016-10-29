package com.twitter.library.client;

import android.content.ComponentName;
import android.support.customtabs.CustomTabsClient;
import android.support.customtabs.CustomTabsServiceConnection;
import cfb;

/* compiled from: Twttr */
class ak extends CustomTabsServiceConnection {
    final /* synthetic */ long a;
    final /* synthetic */ aj b;

    ak(aj ajVar, long j) {
        this.b = ajVar;
        this.a = j;
    }

    public void onCustomTabsServiceConnected(ComponentName componentName, CustomTabsClient customTabsClient) {
        aj.a(this.b, false);
        if (customTabsClient != null) {
            long b = aj.a(this.b).b();
            if (aj.b(this.b) != null) {
                cfb.b("CustomTabs", "Connection callback invoked when client exists already.");
            }
            if (aj.b(this.b) != customTabsClient) {
                cfb.b("CustomTabs", "Service connected. Time to establish connection with Chrome Service: " + Long.toString(b - this.a));
            } else {
                cfb.b("CustomTabs", "Service connection callback invoked after initial connection");
            }
            aj.a(this.b, customTabsClient);
            if (aj.b(this.b).warmup(0)) {
                cfb.b("CustomTabs", "Client warmup succeeded at initial connection.");
                return;
            } else {
                cfb.b("CustomTabs", "Client warmup failed at initial connection.");
                return;
            }
        }
        cfb.b("CustomTabs", "Service connection returned a null client.");
    }

    public void onServiceDisconnected(ComponentName componentName) {
        cfb.b("CustomTabs", "Service disconnected");
    }
}
