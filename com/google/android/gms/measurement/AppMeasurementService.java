package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.support.annotation.MainThread;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.xh;
import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.bc;
import com.google.android.gms.measurement.internal.bx;
import com.google.android.gms.measurement.internal.cc;

public final class AppMeasurementService extends Service {
    private static Boolean b;
    private final Handler a;

    public AppMeasurementService() {
        this.a = new Handler();
    }

    private void a() {
        try {
            synchronized (AppMeasurementReceiver.a) {
                xh xhVar = AppMeasurementReceiver.b;
                if (xhVar != null && xhVar.b()) {
                    xhVar.a();
                }
            }
        } catch (SecurityException e) {
        }
    }

    public static boolean a(Context context) {
        bm.a((Object) context);
        if (b != null) {
            return b.booleanValue();
        }
        boolean a = ag.a(context, AppMeasurementService.class);
        b = Boolean.valueOf(a);
        return a;
    }

    private bc b() {
        return bx.a((Context) this).f();
    }

    @MainThread
    public IBinder onBind(Intent intent) {
        if (intent == null) {
            b().b().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new cc(bx.a((Context) this));
        }
        b().c().a("onBind received unknown action", action);
        return null;
    }

    @MainThread
    public void onCreate() {
        super.onCreate();
        bx a = bx.a((Context) this);
        bc f = a.f();
        if (a.d().N()) {
            f.z().a("Device AppMeasurementService is starting up");
        } else {
            f.z().a("Local AppMeasurementService is starting up");
        }
    }

    @MainThread
    public void onDestroy() {
        bx a = bx.a((Context) this);
        bc f = a.f();
        if (a.d().N()) {
            f.z().a("Device AppMeasurementService is shutting down");
        } else {
            f.z().a("Local AppMeasurementService is shutting down");
        }
        super.onDestroy();
    }

    @MainThread
    public void onRebind(Intent intent) {
        if (intent == null) {
            b().b().a("onRebind called with null intent");
            return;
        }
        b().z().a("onRebind called. action", intent.getAction());
    }

    @MainThread
    public int onStartCommand(Intent intent, int i, int i2) {
        a();
        bx a = bx.a((Context) this);
        bc f = a.f();
        String action = intent.getAction();
        if (a.d().N()) {
            f.z().a("Device AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        } else {
            f.z().a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        }
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            a.h().a(new c(this, a, i2, f));
        }
        return 2;
    }

    @MainThread
    public boolean onUnbind(Intent intent) {
        if (intent == null) {
            b().b().a("onUnbind called with null intent");
        } else {
            b().z().a("onUnbind called for intent. action", intent.getAction());
        }
        return true;
    }
}
