package com.twitter.android.alerts.receivers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
import com.twitter.library.client.az;
import com.twitter.library.client.bg;
import defpackage.bfe;
import defpackage.bxf;

/* compiled from: Twttr */
public class LocationUpdatesAlertsReceiver extends BroadcastReceiver {
    public void onReceive(Context context, Intent intent) {
        Location a = new bxf().a(intent);
        if (a != null) {
            az.a(context).a(new bfe(context, bg.a().c(), a), null);
        }
    }
}
