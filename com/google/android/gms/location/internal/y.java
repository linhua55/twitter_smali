package com.google.android.gms.location.internal;

import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.p;

class y extends p {
    private Handler a;

    private void a(int i, Object obj) {
        if (this.a == null) {
            Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.obj = obj;
        this.a.sendMessage(obtain);
    }

    public void a(LocationAvailability locationAvailability) {
        a(1, locationAvailability);
    }

    public void a(LocationResult locationResult) {
        a(0, locationResult);
    }
}