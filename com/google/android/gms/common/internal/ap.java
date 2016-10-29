package com.google.android.gms.common.internal;

import android.annotation.TargetApi;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.HashSet;
import java.util.Set;

final class ap {
    final /* synthetic */ an a;
    private final aq b;
    private final Set<ServiceConnection> c;
    private int d;
    private boolean e;
    private IBinder f;
    private final ao g;
    private ComponentName h;

    public ap(an anVar, ao aoVar) {
        this.a = anVar;
        this.g = aoVar;
        this.b = new aq(this);
        this.c = new HashSet();
        this.d = 2;
    }

    public void a(ServiceConnection serviceConnection, String str) {
        this.a.d.a(this.a.b, serviceConnection, str, this.g.a());
        this.c.add(serviceConnection);
    }

    @TargetApi(14)
    public void a(String str) {
        this.d = 3;
        this.e = this.a.d.a(this.a.b, str, this.g.a(), this.b, 129);
        if (!this.e) {
            this.d = 2;
            try {
                this.a.d.a(this.a.b, this.b);
            } catch (IllegalArgumentException e) {
            }
        }
    }

    public boolean a() {
        return this.e;
    }

    public boolean a(ServiceConnection serviceConnection) {
        return this.c.contains(serviceConnection);
    }

    public int b() {
        return this.d;
    }

    public void b(ServiceConnection serviceConnection, String str) {
        this.a.d.b(this.a.b, serviceConnection);
        this.c.remove(serviceConnection);
    }

    public void b(String str) {
        this.a.d.a(this.a.b, this.b);
        this.e = false;
        this.d = 2;
    }

    public boolean c() {
        return this.c.isEmpty();
    }

    public IBinder d() {
        return this.f;
    }

    public ComponentName e() {
        return this.h;
    }
}
