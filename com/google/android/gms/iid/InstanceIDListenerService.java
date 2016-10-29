package com.google.android.gms.iid;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.gcm.GcmReceiver;
import com.google.android.gms.gcm.c;
import java.io.IOException;

public class InstanceIDListenerService extends Service {
    static String a;
    private static String f;
    private static String g;
    private static String h;
    MessengerCompat b;
    BroadcastReceiver c;
    int d;
    int e;

    static {
        a = "action";
        f = "google.com/iid";
        g = "CMD";
        h = "gcm.googleapis.com/refresh";
    }

    public InstanceIDListenerService() {
        this.b = new MessengerCompat(new b(this, Looper.getMainLooper()));
        this.c = new c(this);
    }

    static void a(Context context) {
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.setPackage(context.getPackageName());
        intent.putExtra(g, "SYNC");
        context.startService(intent);
    }

    static void a(Context context, l lVar) {
        lVar.b();
        Intent intent = new Intent("com.google.android.gms.iid.InstanceID");
        intent.putExtra(g, "RST");
        intent.setPackage(context.getPackageName());
        context.startService(intent);
    }

    private void a(Message message, int i) {
        j.a((Context) this);
        getPackageManager();
        if (i == j.c || i == j.b) {
            a((Intent) message.obj);
        } else {
            Log.w("InstanceID", "Message from unexpected caller " + i + " mine=" + j.b + " appid=" + j.c);
        }
    }

    void a() {
        synchronized (this) {
            this.d--;
            if (this.d == 0) {
                stopSelf(this.e);
            }
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Stop " + this.d + " " + this.e);
            }
        }
    }

    void a(int i) {
        synchronized (this) {
            this.d++;
            if (i > this.e) {
                this.e = i;
            }
        }
    }

    public void a(Intent intent) {
        a b;
        String stringExtra = intent.getStringExtra("subtype");
        if (stringExtra == null) {
            b = a.b(this);
        } else {
            Bundle bundle = new Bundle();
            bundle.putString("subtype", stringExtra);
            b = a.a(this, bundle);
        }
        String stringExtra2 = intent.getStringExtra(g);
        if (intent.getStringExtra("error") == null && intent.getStringExtra("registration_id") == null) {
            if (Log.isLoggable("InstanceID", 3)) {
                Log.d("InstanceID", "Service command " + stringExtra + " " + stringExtra2 + " " + intent.getExtras());
            }
            if (intent.getStringExtra("unregistered") != null) {
                l d = b.d();
                if (stringExtra == null) {
                    stringExtra = TtmlNode.ANONYMOUS_REGION_ID;
                }
                d.e(stringExtra);
                b.e().d(intent);
                return;
            } else if (h.equals(intent.getStringExtra("from"))) {
                b.d().e(stringExtra);
                a(false);
                return;
            } else if ("RST".equals(stringExtra2)) {
                b.c();
                a(true);
                return;
            } else if ("RST_FULL".equals(stringExtra2)) {
                if (!b.d().a()) {
                    b.d().b();
                    a(true);
                    return;
                }
                return;
            } else if ("SYNC".equals(stringExtra2)) {
                b.d().e(stringExtra);
                a(false);
                return;
            } else if ("PING".equals(stringExtra2)) {
                try {
                    c.a(this).a(f, j.b(), 0, intent.getExtras());
                    return;
                } catch (IOException e) {
                    Log.w("InstanceID", "Failed to send ping response");
                    return;
                }
            } else {
                return;
            }
        }
        if (Log.isLoggable("InstanceID", 3)) {
            Log.d("InstanceID", "Register result in service " + stringExtra);
        }
        b.e().d(intent);
    }

    public void a(boolean z) {
        b();
    }

    public void b() {
    }

    public IBinder onBind(Intent intent) {
        return (intent == null || !"com.google.android.gms.iid.InstanceID".equals(intent.getAction())) ? null : this.b.a();
    }

    public void onCreate() {
        IntentFilter intentFilter = new IntentFilter("com.google.android.c2dm.intent.REGISTRATION");
        intentFilter.addCategory(getPackageName());
        registerReceiver(this.c, intentFilter, "com.google.android.c2dm.permission.RECEIVE", null);
    }

    public void onDestroy() {
        unregisterReceiver(this.c);
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        a(i2);
        if (intent == null) {
            a();
            return 2;
        }
        try {
            if ("com.google.android.gms.iid.InstanceID".equals(intent.getAction())) {
                if (VERSION.SDK_INT <= 18) {
                    Intent intent2 = (Intent) intent.getParcelableExtra("GSF");
                    if (intent2 != null) {
                        startService(intent2);
                        return 1;
                    }
                }
                a(intent);
            }
            a();
            if (intent.getStringExtra("from") != null) {
                GcmReceiver.completeWakefulIntent(intent);
            }
            return 2;
        } finally {
            a();
        }
    }
}
