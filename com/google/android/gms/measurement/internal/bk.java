package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.support.annotation.MainThread;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.internal.bm;

class bk extends BroadcastReceiver {
    static final String a;
    private final bx b;
    private boolean c;
    private boolean d;

    static {
        a = bk.class.getName();
    }

    bk(bx bxVar) {
        bm.a(bxVar);
        this.b = bxVar;
    }

    private Context d() {
        return this.b.p();
    }

    private bc e() {
        return this.b.f();
    }

    @WorkerThread
    public void a() {
        this.b.a();
        this.b.x();
        if (!this.c) {
            d().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.d = this.b.o().b();
            e().z().a("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.d));
            this.c = true;
        }
    }

    @WorkerThread
    public void b() {
        this.b.a();
        this.b.x();
        if (c()) {
            e().z().a("Unregistering connectivity change receiver");
            this.c = false;
            this.d = false;
            try {
                d().unregisterReceiver(this);
            } catch (IllegalArgumentException e) {
                e().b().a("Failed to unregister the network broadcast receiver", e);
            }
        }
    }

    @WorkerThread
    public boolean c() {
        this.b.x();
        return this.c;
    }

    @MainThread
    public void onReceive(Context context, Intent intent) {
        this.b.a();
        String action = intent.getAction();
        e().z().a("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean b = this.b.o().b();
            if (this.d != b) {
                this.d = b;
                this.b.h().a(new bl(this, b));
                return;
            }
            return;
        }
        e().c().a("NetworkBroadcastReceiver received unknown action", action);
    }
}
