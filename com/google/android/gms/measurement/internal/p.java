package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.MainThread;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.common.internal.w;
import com.google.android.gms.common.stats.b;

public class p implements ServiceConnection, q, r {
    final /* synthetic */ i a;
    private volatile boolean b;
    private volatile bb c;

    protected p(i iVar) {
        this.a = iVar;
    }

    @WorkerThread
    public void a() {
        this.a.f();
        Context m = this.a.m();
        synchronized (this) {
            if (this.b) {
                this.a.s().z().a("Connection attempt already in progress");
            } else if (this.c != null) {
                this.a.s().z().a("Already awaiting connection attempt");
            } else {
                this.c = new bb(m, Looper.getMainLooper(), w.a(m), this, this);
                this.a.s().z().a("Connecting to remote service");
                this.b = true;
                this.c.k();
            }
        }
    }

    @MainThread
    public void a(int i) {
        bm.b("MeasurementServiceConnection.onConnectionSuspended");
        this.a.s().y().a("Service connection suspended");
        this.a.r().a(new t(this));
    }

    @WorkerThread
    public void a(Intent intent) {
        this.a.f();
        Context m = this.a.m();
        b a = b.a();
        synchronized (this) {
            if (this.b) {
                this.a.s().z().a("Connection attempt already in progress");
                return;
            }
            this.b = true;
            a.a(m, intent, this.a.a, 129);
        }
    }

    @MainThread
    public void a(@Nullable Bundle bundle) {
        bm.b("MeasurementServiceConnection.onConnected");
        synchronized (this) {
            try {
                ax axVar = (ax) this.c.q();
                this.c = null;
                this.a.r().a(new s(this, axVar));
            } catch (DeadObjectException e) {
                this.c = null;
                this.b = false;
            } catch (IllegalStateException e2) {
                this.c = null;
                this.b = false;
            }
        }
    }

    @MainThread
    public void a(@NonNull ConnectionResult connectionResult) {
        bm.b("MeasurementServiceConnection.onConnectionFailed");
        bc g = this.a.n.g();
        if (g != null) {
            g.c().a("Service connection failed", connectionResult);
        }
        synchronized (this) {
            this.b = false;
            this.c = null;
        }
    }

    @MainThread
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        bm.b("MeasurementServiceConnection.onServiceConnected");
        synchronized (this) {
            if (iBinder == null) {
                this.b = false;
                this.a.s().b().a("Service connected with null binder");
                return;
            }
            ax axVar = null;
            try {
                String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                if ("com.google.android.gms.measurement.internal.IMeasurementService".equals(interfaceDescriptor)) {
                    axVar = ay.a(iBinder);
                    this.a.s().z().a("Bound to IMeasurementService interface");
                } else {
                    this.a.s().b().a("Got binder with a wrong descriptor", interfaceDescriptor);
                }
            } catch (RemoteException e) {
                this.a.s().b().a("Service connect failed to get IMeasurementService");
            }
            if (axVar == null) {
                this.b = false;
                try {
                    b.a().a(this.a.m(), this.a.a);
                } catch (IllegalArgumentException e2) {
                }
            } else {
                this.a.r().a(new q(this, axVar));
            }
            return;
        }
    }

    @MainThread
    public void onServiceDisconnected(ComponentName componentName) {
        bm.b("MeasurementServiceConnection.onServiceDisconnected");
        this.a.s().y().a("Service disconnected");
        this.a.r().a(new r(this, componentName));
    }
}
