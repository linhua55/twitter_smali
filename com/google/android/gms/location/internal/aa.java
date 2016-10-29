package com.google.android.gms.location.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.location.g;
import com.google.android.gms.location.s;

class aa extends s {
    private Handler a;

    aa(g gVar, Looper looper) {
        if (looper == null) {
            bm.a(Looper.myLooper() != null, "Can't create handler inside thread that has not called Looper.prepare()");
        }
        this.a = looper == null ? new z(gVar) : new z(gVar, looper);
    }

    public void a() {
        this.a = null;
    }

    public void a(Location location) {
        if (this.a == null) {
            Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
            return;
        }
        Message obtain = Message.obtain();
        obtain.what = 1;
        obtain.obj = location;
        this.a.sendMessage(obtain);
    }
}
