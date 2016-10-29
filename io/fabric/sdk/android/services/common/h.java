package io.fabric.sdk.android.services.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.fabric.sdk.android.f;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
final class h implements ServiceConnection {
    private boolean a;
    private final LinkedBlockingQueue<IBinder> b;

    private h() {
        this.a = false;
        this.b = new LinkedBlockingQueue(1);
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        try {
            this.b.put(iBinder);
        } catch (InterruptedException e) {
        }
    }

    public void onServiceDisconnected(ComponentName componentName) {
        this.b.clear();
    }

    public IBinder a() {
        if (this.a) {
            f.h().e("Fabric", "getBinder already called");
        }
        this.a = true;
        try {
            return (IBinder) this.b.poll(200, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            return null;
        }
    }
}
