package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: Twttr */
class av {
    private static final IntentFilter a;
    private static final IntentFilter b;
    private static final IntentFilter c;
    private final AtomicBoolean d;
    private final Context e;
    private final BroadcastReceiver f;
    private final BroadcastReceiver g;
    private boolean h;

    static {
        a = new IntentFilter("android.intent.action.BATTERY_CHANGED");
        b = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
        c = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    }

    public av(Context context) {
        int i = -1;
        this.e = context;
        Intent registerReceiver = context.registerReceiver(null, a);
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra("status", -1);
        }
        boolean z = i == 2 || i == 5;
        this.h = z;
        this.g = new aw(this);
        this.f = new ax(this);
        context.registerReceiver(this.g, b);
        context.registerReceiver(this.f, c);
        this.d = new AtomicBoolean(true);
    }

    public boolean a() {
        return this.h;
    }

    public void b() {
        if (this.d.getAndSet(false)) {
            this.e.unregisterReceiver(this.g);
            this.e.unregisterReceiver(this.f);
        }
    }
}
