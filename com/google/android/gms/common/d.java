package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.Looper;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class d implements ServiceConnection {
    boolean a;
    private final BlockingQueue<IBinder> b;

    public d() {
        this.a = false;
        this.b = new LinkedBlockingQueue();
    }

    public IBinder a() throws InterruptedException {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("BlockingServiceConnection.getService() called on main thread");
        } else if (this.a) {
            throw new IllegalStateException();
        } else {
            this.a = true;
            return (IBinder) this.b.take();
        }
    }

    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.b.add(iBinder);
    }

    public void onServiceDisconnected(ComponentName componentName) {
    }
}
