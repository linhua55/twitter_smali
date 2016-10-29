package com.google.android.gms.iid;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

class c extends BroadcastReceiver {
    final /* synthetic */ InstanceIDListenerService a;

    c(InstanceIDListenerService instanceIDListenerService) {
        this.a = instanceIDListenerService;
    }

    public void onReceive(Context context, Intent intent) {
        if (Log.isLoggable("InstanceID", 3)) {
            intent.getStringExtra("registration_id");
            Log.d("InstanceID", "Received GSF callback using dynamic receiver: " + intent.getExtras());
        }
        this.a.a(intent);
        this.a.a();
    }
}
