package com.twitter.library.geo.wifilog;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import android.net.wifi.WifiManager;
import com.twitter.config.d;
import com.twitter.library.api.geo.k;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import com.twitter.library.util.ax;

/* compiled from: Twttr */
public class WifiLogReceiver extends BroadcastReceiver {
    private final az a;
    private final a b;
    private final b c;
    private final WifiManager d;

    public WifiLogReceiver(a aVar, b bVar, az azVar, WifiManager wifiManager) {
        this.b = aVar;
        this.c = bVar;
        this.a = azVar;
        this.d = wifiManager;
    }

    public void onReceive(Context context, Intent intent) {
        if (this.d.isWifiEnabled() && d.a("geo_wifi_logging_enabled")) {
            Location location = intent.hasExtra("com.twitter.library.geo.LOCATION_EXTRA") ? (Location) intent.getExtras().getParcelable("com.twitter.library.geo.LOCATION_EXTRA") : null;
            this.c.a(ax.a(context));
            if (this.b.b(location) && this.c.b()) {
                this.b.a(location);
                this.a.a(new k(context, bg.a().c(), this.b.a(), this.c.a()), null);
            }
        }
    }
}
