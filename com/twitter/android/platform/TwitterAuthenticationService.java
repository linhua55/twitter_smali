package com.twitter.android.platform;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

/* compiled from: Twttr */
public class TwitterAuthenticationService extends Service {
    private d a;

    public void onCreate() {
        super.onCreate();
        this.a = new d(this);
    }

    public void onDestroy() {
        super.onDestroy();
        this.a = null;
    }

    public IBinder onBind(Intent intent) {
        return this.a.getIBinder();
    }
}
