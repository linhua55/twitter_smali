package com.google.android.gms.location.internal;

import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.location.g;

class z extends Handler {
    private final g a;

    public z(g gVar) {
        this.a = gVar;
    }

    public z(g gVar, Looper looper) {
        super(looper);
        this.a = gVar;
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                this.a.a(new Location((Location) message.obj));
            default:
                Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
        }
    }
}
