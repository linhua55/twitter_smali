package com.google.android.gms.location.places.ui;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.places.a;
import com.google.android.gms.location.places.internal.PlaceImpl;

abstract class f {
    public static a c(Context context, Intent intent) {
        bm.a(intent, "intent must not be null");
        bm.a(context, "context must not be null");
        return (a) b.a(intent, "selected_place", PlaceImpl.CREATOR);
    }

    public static Status d(Context context, Intent intent) {
        bm.a(intent, "intent must not be null");
        bm.a(context, "context must not be null");
        return (Status) b.a(intent, "status", Status.CREATOR);
    }
}
