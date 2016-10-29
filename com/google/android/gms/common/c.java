package com.google.android.gms.common;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;

class c extends Handler {
    private final Context a;

    c(Context context) {
        super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
        this.a = context.getApplicationContext();
    }

    public void handleMessage(Message message) {
        switch (message.what) {
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.a);
                if (GooglePlayServicesUtil.isUserRecoverableError(isGooglePlayServicesAvailable)) {
                    GooglePlayServicesUtil.zzb(isGooglePlayServicesAvailable, this.a);
                }
            default:
                Log.w("GooglePlayServicesUtil", "Don't know how to handle this message: " + message.what);
        }
    }
}
