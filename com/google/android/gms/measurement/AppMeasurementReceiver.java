package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.xh;
import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.bc;
import com.google.android.gms.measurement.internal.bx;

public final class AppMeasurementReceiver extends BroadcastReceiver {
    static final Object a;
    static xh b;
    static Boolean c;

    static {
        a = new Object();
    }

    public static boolean a(Context context) {
        bm.a((Object) context);
        if (c != null) {
            return c.booleanValue();
        }
        boolean a = ag.a(context, AppMeasurementReceiver.class, false);
        c = Boolean.valueOf(a);
        return a;
    }

    @MainThread
    public void onReceive(Context context, Intent intent) {
        bx a = bx.a(context);
        bc f = a.f();
        String action = intent.getAction();
        if (a.d().N()) {
            f.z().a("Device AppMeasurementReceiver got", action);
        } else {
            f.z().a("Local AppMeasurementReceiver got", action);
        }
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            boolean a2 = AppMeasurementService.a(context);
            Intent intent2 = new Intent(context, AppMeasurementService.class);
            intent2.setAction("com.google.android.gms.measurement.UPLOAD");
            synchronized (a) {
                context.startService(intent2);
                if (a2) {
                    try {
                        if (b == null) {
                            b = new xh(context, 1, "AppMeasurement WakeLock");
                            b.a(false);
                        }
                        b.a(1000);
                    } catch (SecurityException e) {
                        f.c().a("AppMeasurementService at risk of not starting. For more reliable app measurements, add the WAKE_LOCK permission to your manifest.");
                    }
                    return;
                }
            }
        }
    }
}
