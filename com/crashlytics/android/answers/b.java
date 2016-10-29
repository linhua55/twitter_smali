package com.crashlytics.android.answers;

import android.content.Context;
import cwz;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.network.j;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: Twttr */
class b implements cwz {
    final ScheduledExecutorService a;
    z b;
    private final p c;
    private final Context d;
    private final i e;
    private final ae f;
    private final j g;

    public b(p pVar, Context context, i iVar, ae aeVar, j jVar, ScheduledExecutorService scheduledExecutorService) {
        this.b = new p();
        this.c = pVar;
        this.d = context;
        this.e = iVar;
        this.f = aeVar;
        this.g = jVar;
        this.a = scheduledExecutorService;
    }

    public void a(ab abVar) {
        a(abVar, false, false);
    }

    public void b(ab abVar) {
        a(abVar, false, true);
    }

    public void c(ab abVar) {
        a(abVar, true, false);
    }

    public void a(io.fabric.sdk.android.services.settings.b bVar, String str) {
        b(new c(this, bVar, str));
    }

    public void a() {
        b(new d(this));
    }

    public void a(String str) {
        b(new e(this));
    }

    public void b() {
        b(new f(this));
    }

    public void c() {
        b(new g(this));
    }

    void a(ab abVar, boolean z, boolean z2) {
        Runnable hVar = new h(this, abVar, z2);
        if (z) {
            a(hVar);
        } else {
            b(hVar);
        }
    }

    private void a(Runnable runnable) {
        try {
            this.a.submit(runnable).get();
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to run events task", e);
        }
    }

    private void b(Runnable runnable) {
        try {
            this.a.submit(runnable);
        } catch (Throwable e) {
            f.h().e("Answers", "Failed to submit events task", e);
        }
    }
}
