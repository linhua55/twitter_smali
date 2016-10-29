package com.google.android.gcm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/* compiled from: Twttr */
public class GCMBroadcastReceiver extends BroadcastReceiver {
    private static final boolean a;
    private static boolean b;

    static {
        a = Log.isLoggable("GCMBroadcastReceiver", 3);
        b = false;
    }

    public final void onReceive(Context context, Intent intent) {
        String name;
        if (a) {
            Log.v("GCMBroadcastReceiver", "onReceive: " + intent.getAction());
        }
        if (!b) {
            b = true;
            name = getClass().getName();
            if (!name.equals(GCMBroadcastReceiver.class.getName())) {
                b.a(name);
            }
        }
        name = a(context);
        if (a) {
            Log.v("GCMBroadcastReceiver", "GCM IntentService class: " + name);
        }
        GCMBaseIntentService.a(context, intent, name);
        if (isOrderedBroadcast()) {
            setResult(-1, null, null);
        }
    }

    protected String a(Context context) {
        return b(context);
    }

    static final String b(Context context) {
        return context.getPackageName() + ".GCMIntentService";
    }
}
