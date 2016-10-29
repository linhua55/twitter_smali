package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import com.google.android.gms.measurement.AppMeasurementService;

public class ad extends cl {
    private boolean a;
    private final AlarmManager b;

    protected ad(bx bxVar) {
        super(bxVar);
        this.b = (AlarmManager) m().getSystemService("alarm");
    }

    private PendingIntent c() {
        Intent intent = new Intent(m(), AppMeasurementReceiver.class);
        intent.setAction("com.google.android.gms.measurement.UPLOAD");
        return PendingIntent.getBroadcast(m(), 0, intent, 0);
    }

    protected void a() {
        this.b.cancel(c());
    }

    public void a(long j) {
        G();
        bm.b(j > 0);
        bm.a(AppMeasurementReceiver.a(m()), "Receiver not registered/enabled");
        bm.a(AppMeasurementService.a(m()), "Service not registered/enabled");
        b();
        long b = l().b() + j;
        this.a = true;
        this.b.setInexactRepeating(2, b, Math.max(u().Z(), j), c());
    }

    public void b() {
        G();
        this.a = false;
        this.b.cancel(c());
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
}
