package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.annotation.WorkerThread;
import com.facebook.shimmer.b;
import com.google.android.exoplayer.hls.HlsChunkSource;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.vj;
import com.google.android.gms.measurement.AppMeasurementService;
import defpackage.bdd;
import java.util.ArrayList;
import java.util.List;

public class i extends cl {
    private final p a;
    private ax b;
    private Boolean c;
    private final ao d;
    private final ac e;
    private final List<Runnable> f;
    private final ao g;

    protected i(bx bxVar) {
        super(bxVar);
        this.f = new ArrayList();
        this.e = new ac(bxVar.q());
        this.a = new p(this);
        this.d = new j(this, bxVar);
        this.g = new k(this, bxVar);
    }

    @WorkerThread
    private boolean A() {
        f();
        G();
        if (u().N()) {
            return true;
        }
        s().z().a("Checking service availability");
        switch (f.b().a(m())) {
            case Util.TYPE_DASH /*0*/:
                s().z().a("Service available");
                return true;
            case ModuleDescriptor.MODULE_VERSION /*1*/:
                s().z().a("Service missing");
                return false;
            case Buffer.FLAG_DECODE_ONLY /*2*/:
                s().z().a("Service version update required");
                return false;
            case Util.TYPE_OTHER /*3*/:
                s().z().a("Service disabled");
                return false;
            case b.ShimmerFrameLayout_fixed_height /*9*/:
                s().z().a("Service invalid");
                return false;
            case bdd.TwitterButton_knockout /*18*/:
                s().z().a("Service updating");
                return true;
            default:
                return false;
        }
    }

    @WorkerThread
    private void B() {
        f();
        if (b()) {
            s().z().a("Inactivity, disconnecting from AppMeasurementService");
            w();
        }
    }

    @WorkerThread
    private void C() {
        f();
        y();
    }

    @WorkerThread
    private void D() {
        f();
        s().z().a("Processing queued up service tasks", Integer.valueOf(this.f.size()));
        for (Runnable a : this.f) {
            r().a(a);
        }
        this.f.clear();
        this.g.c();
    }

    @WorkerThread
    private void a(ComponentName componentName) {
        f();
        if (this.b != null) {
            this.b = null;
            s().z().a("Disconnected from device MeasurementService", componentName);
            C();
        }
    }

    @WorkerThread
    private void a(ax axVar) {
        f();
        bm.a(axVar);
        this.b = axVar;
        x();
        D();
    }

    @WorkerThread
    private void a(Runnable runnable) throws IllegalStateException {
        f();
        if (b()) {
            runnable.run();
        } else if (((long) this.f.size()) >= u().R()) {
            s().b().a("Discarding data. Max runnable queue size reached");
        } else {
            this.f.add(runnable);
            if (!this.n.y()) {
                this.g.a((long) HlsChunkSource.DEFAULT_PLAYLIST_BLACKLIST_MS);
            }
            y();
        }
    }

    @WorkerThread
    private void x() {
        f();
        this.e.a();
        if (!this.n.y()) {
            this.d.a(u().J());
        }
    }

    @WorkerThread
    private void y() {
        f();
        G();
        if (!b()) {
            if (this.c == null) {
                this.c = t().v();
                if (this.c == null) {
                    s().z().a("State of service unknown");
                    this.c = Boolean.valueOf(A());
                    t().a(this.c.booleanValue());
                }
            }
            if (this.c.booleanValue()) {
                s().z().a("Using measurement service");
                this.a.a();
            } else if (z() && !this.n.y()) {
                s().z().a("Using local app measurement service");
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                intent.setComponent(new ComponentName(m(), AppMeasurementService.class));
                this.a.a(intent);
            } else if (u().O()) {
                s().z().a("Using direct local measurement implementation");
                a(new cc(this.n, true));
            } else {
                s().b().a("Not in main process. Unable to use local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            }
        }
    }

    private boolean z() {
        List queryIntentServices = m().getPackageManager().queryIntentServices(new Intent(m(), AppMeasurementService.class), 65536);
        return queryIntentServices != null && queryIntentServices.size() > 0;
    }

    protected void a() {
    }

    @WorkerThread
    protected void a(EventParcel eventParcel, String str) {
        bm.a(eventParcel);
        f();
        G();
        a(new m(this, str, eventParcel));
    }

    @WorkerThread
    protected void a(UserAttributeParcel userAttributeParcel) {
        f();
        G();
        a(new n(this, userAttributeParcel));
    }

    @WorkerThread
    public boolean b() {
        f();
        G();
        return this.b != null;
    }

    @WorkerThread
    protected void c() {
        f();
        G();
        a(new l(this));
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public /* bridge */ /* synthetic */ void e() {
        super.e();
    }

    public /* bridge */ /* synthetic */ void f() {
        super.f();
    }

    public /* bridge */ /* synthetic */ ai g() {
        return super.g();
    }

    public /* bridge */ /* synthetic */ d h() {
        return super.h();
    }

    public /* bridge */ /* synthetic */ ba i() {
        return super.i();
    }

    public /* bridge */ /* synthetic */ aq j() {
        return super.j();
    }

    public /* bridge */ /* synthetic */ i k() {
        return super.k();
    }

    public /* bridge */ /* synthetic */ vj l() {
        return super.l();
    }

    public /* bridge */ /* synthetic */ Context m() {
        return super.m();
    }

    public /* bridge */ /* synthetic */ ak n() {
        return super.n();
    }

    public /* bridge */ /* synthetic */ ag o() {
        return super.o();
    }

    public /* bridge */ /* synthetic */ bs p() {
        return super.p();
    }

    public /* bridge */ /* synthetic */ u q() {
        return super.q();
    }

    public /* bridge */ /* synthetic */ bt r() {
        return super.r();
    }

    public /* bridge */ /* synthetic */ bc s() {
        return super.s();
    }

    public /* bridge */ /* synthetic */ bn t() {
        return super.t();
    }

    public /* bridge */ /* synthetic */ aj u() {
        return super.u();
    }

    @WorkerThread
    protected void v() {
        f();
        G();
        a(new o(this));
    }

    @WorkerThread
    public void w() {
        f();
        G();
        try {
            com.google.android.gms.common.stats.b.a().a(m(), this.a);
        } catch (IllegalStateException e) {
        } catch (IllegalArgumentException e2) {
        }
        this.b = null;
    }
}
