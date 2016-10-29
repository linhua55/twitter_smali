package com.google.android.gms.ads.internal.request;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Looper;
import android.support.annotation.NonNull;
import com.google.android.gms.ads.internal.ar;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.q;
import com.google.android.gms.common.api.r;
import com.google.android.gms.internal.cj;
import com.google.android.gms.internal.oi;
import com.google.android.gms.internal.rj;
import com.google.android.gms.internal.so;

@oi
public class o extends k implements q, r {
    protected p a;
    private Context b;
    private VersionInfoParcel c;
    private so<AdRequestInfoParcel> d;
    private final i e;
    private final Object f;
    private boolean g;

    public o(Context context, VersionInfoParcel versionInfoParcel, so<AdRequestInfoParcel> soVar, i iVar) {
        Looper a;
        super(soVar, iVar);
        this.f = new Object();
        this.b = context;
        this.c = versionInfoParcel;
        this.d = soVar;
        this.e = iVar;
        if (((Boolean) cj.A.c()).booleanValue()) {
            this.g = true;
            a = ar.q().a();
        } else {
            a = context.getMainLooper();
        }
        this.a = new p(context, a, this, this, this.c.d);
        f();
    }

    public void a() {
        synchronized (this.f) {
            if (this.a.e() || this.a.l()) {
                this.a.d();
            }
            Binder.flushPendingCommands();
            if (this.g) {
                ar.q().b();
                this.g = false;
            }
        }
    }

    public void a(int i) {
        b.a("Disconnected from remote ad request service.");
    }

    public void a(Bundle bundle) {
        c();
    }

    public void a(@NonNull ConnectionResult connectionResult) {
        b.a("Cannot connect to remote service, fallback to local instance.");
        g().e();
        Bundle bundle = new Bundle();
        bundle.putString("action", "gms_connection_failed_fallback_to_local");
        ar.e().b(this.b, this.c.b, "gmob-apps", bundle, true);
    }

    public u b() {
        u c;
        synchronized (this.f) {
            try {
                c = this.a.c();
            } catch (IllegalStateException e) {
                c = null;
                return c;
            } catch (DeadObjectException e2) {
                c = null;
                return c;
            }
        }
        return c;
    }

    public /* synthetic */ Object e() {
        return super.c();
    }

    protected void f() {
        this.a.k();
    }

    rj g() {
        return new n(this.b, this.d, this.e);
    }
}
