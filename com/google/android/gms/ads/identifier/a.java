package com.google.android.gms.ads.identifier;

import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

class a extends Thread {
    CountDownLatch a;
    boolean b;
    private WeakReference<AdvertisingIdClient> c;
    private long d;

    public a(AdvertisingIdClient advertisingIdClient, long j) {
        this.c = new WeakReference(advertisingIdClient);
        this.d = j;
        this.a = new CountDownLatch(1);
        this.b = false;
        start();
    }

    private void c() {
        AdvertisingIdClient advertisingIdClient = (AdvertisingIdClient) this.c.get();
        if (advertisingIdClient != null) {
            advertisingIdClient.finish();
            this.b = true;
        }
    }

    public void a() {
        this.a.countDown();
    }

    public boolean b() {
        return this.b;
    }

    public void run() {
        try {
            if (!this.a.await(this.d, TimeUnit.MILLISECONDS)) {
                c();
            }
        } catch (InterruptedException e) {
            c();
        }
    }
}
