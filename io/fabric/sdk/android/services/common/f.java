package io.fabric.sdk.android.services.common;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Looper;

/* compiled from: Twttr */
class f implements j {
    private final Context a;

    public f(Context context) {
        this.a = context.getApplicationContext();
    }

    public b a() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            io.fabric.sdk.android.f.h().a("Fabric", "AdvertisingInfoServiceStrategy cannot be called on the main thread");
            return null;
        }
        try {
            this.a.getPackageManager().getPackageInfo("com.android.vending", 0);
            ServiceConnection hVar = new h();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                if (this.a.bindService(intent, hVar, 1)) {
                    i iVar = new i(hVar.a());
                    b bVar = new b(iVar.a(), iVar.b());
                    this.a.unbindService(hVar);
                    return bVar;
                }
                io.fabric.sdk.android.f.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId");
                return null;
            } catch (Throwable e) {
                io.fabric.sdk.android.f.h().d("Fabric", "Exception in binding to Google Play Service to capture AdvertisingId", e);
                this.a.unbindService(hVar);
                return null;
            } catch (Throwable e2) {
                io.fabric.sdk.android.f.h().a("Fabric", "Could not bind to Google Play Service to capture AdvertisingId", e2);
                return null;
            }
        } catch (NameNotFoundException e3) {
            io.fabric.sdk.android.f.h().a("Fabric", "Unable to find Google Play Services package name");
            return null;
        } catch (Throwable e22) {
            io.fabric.sdk.android.f.h().a("Fabric", "Unable to determine if Google Play Services is available", e22);
            return null;
        }
    }
}
