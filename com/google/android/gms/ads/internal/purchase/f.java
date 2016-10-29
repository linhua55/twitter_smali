package com.google.android.gms.ads.internal.purchase;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.internal.ml;
import com.google.android.gms.internal.ms;
import com.google.android.gms.internal.oi;

@oi
public class f extends ms implements ServiceConnection {
    i a;
    private final Activity b;
    private Context c;
    private ml d;
    private b e;
    private g f;
    private m g;
    private n h;
    private String i;

    public f(Activity activity) {
        this.i = null;
        this.b = activity;
        this.a = i.a(this.b.getApplicationContext());
    }

    public void a() {
        GInAppPurchaseManagerInfoParcel a = GInAppPurchaseManagerInfoParcel.a(this.b.getIntent());
        this.g = a.e;
        this.h = a.b;
        this.d = a.c;
        this.e = new b(this.b.getApplicationContext());
        this.c = a.d;
        if (this.b.getResources().getConfiguration().orientation == 2) {
            this.b.setRequestedOrientation(ar.g().a());
        } else {
            this.b.setRequestedOrientation(ar.g().b());
        }
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
        this.b.bindService(intent, this, 1);
    }

    public void a(int i, int i2, Intent intent) {
        if (i == 1001) {
            boolean z = false;
            try {
                int a = ar.o().a(intent);
                if (i2 == -1) {
                    ar.o();
                    if (a == 0) {
                        if (this.h.a(this.i, i2, intent)) {
                            z = true;
                        }
                        this.d.c(a);
                        this.b.finish();
                        a(this.d.a(), z, i2, intent);
                    }
                }
                this.a.a(this.f);
                this.d.c(a);
                this.b.finish();
                a(this.d.a(), z, i2, intent);
            } catch (RemoteException e) {
                b.d("Fail to process purchase result.");
                this.b.finish();
            } finally {
                this.i = null;
            }
        }
    }

    protected void a(String str, boolean z, int i, Intent intent) {
        if (this.g != null) {
            this.g.a(str, z, i, intent, this.f);
        }
    }

    public void b() {
        this.b.unbindService(this);
        this.e.a();
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Throwable e;
        this.e.a(iBinder);
        try {
            this.i = this.h.a();
            Bundle a = this.e.a(this.b.getPackageName(), this.d.a(), this.i);
            PendingIntent pendingIntent = (PendingIntent) a.getParcelable("BUY_INTENT");
            if (pendingIntent == null) {
                int a2 = ar.o().a(a);
                this.d.c(a2);
                a(this.d.a(), false, a2, null);
                this.b.finish();
                return;
            }
            this.f = new g(this.d.a(), this.i);
            this.a.b(this.f);
            this.b.startIntentSenderForResult(pendingIntent.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        } catch (RemoteException e2) {
            e = e2;
            b.d("Error when connecting in-app billing service", e);
            this.b.finish();
        } catch (SendIntentException e3) {
            e = e3;
            b.d("Error when connecting in-app billing service", e);
            this.b.finish();
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        b.c("In-app billing service disconnected.");
        this.e.a();
    }
}
