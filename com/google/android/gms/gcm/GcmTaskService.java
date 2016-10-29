package com.google.android.gms.gcm;

import android.app.Service;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcelable;
import android.util.Log;
import java.util.HashSet;
import java.util.Set;

public abstract class GcmTaskService extends Service {
    private final Set<String> a;
    private int b;

    public GcmTaskService() {
        this.a = new HashSet();
    }

    private void a(String str) {
        synchronized (this.a) {
            this.a.remove(str);
            if (this.a.size() == 0) {
                stopSelf(this.b);
            }
        }
    }

    public abstract int a(k kVar);

    public void a() {
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        intent.setExtrasClassLoader(PendingCallback.class.getClassLoader());
        if ("com.google.android.gms.gcm.ACTION_TASK_READY".equals(intent.getAction())) {
            String stringExtra = intent.getStringExtra("tag");
            Parcelable parcelableExtra = intent.getParcelableExtra("callback");
            Bundle bundle = (Bundle) intent.getParcelableExtra("extras");
            if (parcelableExtra == null || !(parcelableExtra instanceof PendingCallback)) {
                Log.e("GcmTaskService", getPackageName() + " " + stringExtra + ": Could not process request, invalid callback.");
            } else {
                synchronized (this.a) {
                    this.a.add(stringExtra);
                    stopSelf(this.b);
                    this.b = i2;
                }
                new b(this, stringExtra, ((PendingCallback) parcelableExtra).a(), bundle).start();
            }
        } else if ("com.google.android.gms.gcm.SERVICE_ACTION_INITIALIZE".equals(intent.getAction())) {
            a();
            synchronized (this.a) {
                this.b = i2;
                if (this.a.size() == 0) {
                    stopSelf(this.b);
                }
            }
        }
        return 2;
    }
}
