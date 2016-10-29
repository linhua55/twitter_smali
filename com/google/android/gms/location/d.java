package com.google.android.gms.location;

import android.app.PendingIntent;
import android.location.Location;
import android.support.annotation.RequiresPermission;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.n;
import com.google.android.gms.common.api.t;

public interface d {
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    Location a(n nVar);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    t<Status> a(n nVar, LocationRequest locationRequest, PendingIntent pendingIntent);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    t<Status> a(n nVar, LocationRequest locationRequest, g gVar);

    t<Status> a(n nVar, g gVar);
}
