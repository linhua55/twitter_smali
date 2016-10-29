package com.twitter.library.resilient;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.exoplayer.MediaFormat;
import com.twitter.library.service.u;
import defpackage.cfb;

/* compiled from: Twttr */
public class PersistentJobsStickyService extends Service {
    public IBinder onBind(Intent intent) {
        return null;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int i3 = -1;
        super.onStartCommand(intent, i, i2);
        Context applicationContext = getApplicationContext();
        u.a(applicationContext);
        if (intent != null) {
            i3 = intent.getIntExtra("startCondition", -1);
        }
        cfb.b("CentralizerService", "Starting centralizer service for type: " + i3);
        int c = e.a(applicationContext).c();
        switch (i3) {
            case MediaFormat.NO_VALUE /*-1*/:
                if (c > 0) {
                    h.a(applicationContext).a();
                    break;
                }
                break;
        }
        if (c > 0) {
            return 1;
        }
        stopSelf();
        return 2;
    }
}
