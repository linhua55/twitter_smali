package com.twitter.library.geo.wifilog;

import android.location.Location;

/* compiled from: Twttr */
public class a {
    private Location a;

    public void a(Location location) {
        this.a = location;
    }

    public boolean b(Location location) {
        return location != null && ((this.a == null || ((double) this.a.distanceTo(location)) > 1000.0d) && location.hasAccuracy() && location.getAccuracy() < 50.0f);
    }

    public Location a() {
        return this.a;
    }
}
