package com.twitter.android.initialization;

import android.content.Context;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import bvs;
import com.twitter.android.geo.a;
import com.twitter.android.lf;
import com.twitter.config.d;
import com.twitter.library.client.az;
import com.twitter.library.geo.wifilog.WifiLogReceiver;
import com.twitter.library.geo.wifilog.b;
import defpackage.aof;

/* compiled from: Twttr */
public class GeoInitializer extends aof<Void> {
    protected void a(Context context, Void voidR) {
        bvs.a(new a(context, lf.a()));
        if (d.a("geo_wifi_logging_enabled")) {
            context.registerReceiver(new WifiLogReceiver(new com.twitter.library.geo.wifilog.a(), new b(), az.a(context), (WifiManager) context.getSystemService("wifi")), new IntentFilter("com.twitter.library.geo.LOCATION_CHANGED"));
        }
    }
}
