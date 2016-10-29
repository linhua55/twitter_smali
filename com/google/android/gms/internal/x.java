package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

final class x implements Runnable {
    private Context a;

    public x(Context context) {
        this.a = context.getApplicationContext();
        if (this.a == null) {
            this.a = context;
        }
    }

    public void run() {
        synchronized (v.class) {
            try {
                if (v.r == null) {
                    AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
                    AdvertisingIdClient advertisingIdClient = new AdvertisingIdClient(this.a);
                    advertisingIdClient.start();
                    v.r = advertisingIdClient;
                }
                v.s.countDown();
            } catch (GooglePlayServicesNotAvailableException e) {
                try {
                    v.r = null;
                } finally {
                    v.s.countDown();
                }
            } catch (IOException e2) {
                v.r = null;
            } catch (GooglePlayServicesRepairableException e3) {
                v.r = null;
            }
        }
    }
}
