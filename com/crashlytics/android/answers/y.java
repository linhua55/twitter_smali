package com.crashlytics.android.answers;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import cxg;
import io.fabric.sdk.android.a;
import io.fabric.sdk.android.f;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.IdManager;
import io.fabric.sdk.android.services.common.s;
import io.fabric.sdk.android.services.network.b;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: Twttr */
class y implements o {
    final b a;
    final a b;
    final m c;
    final k d;
    private final long e;

    public static y a(p pVar, Context context, IdManager idManager, String str, String str2, long j) {
        ae aeVar = new ae(context, idManager, str, str2);
        i iVar = new i(context, new cxg(pVar));
        b bVar = new b(f.h());
        a aVar = new a(context);
        ScheduledExecutorService b = s.b("Answers Events Handler");
        m mVar = new m(b);
        return new y(new b(pVar, context, iVar, aeVar, bVar, b), aVar, mVar, k.a(context), j);
    }

    y(b bVar, a aVar, m mVar, k kVar, long j) {
        this.a = bVar;
        this.b = aVar;
        this.c = mVar;
        this.d = kVar;
        this.e = j;
    }

    public void b() {
        this.a.b();
        this.b.a(new j(this, this.c));
        this.c.a((o) this);
        if (a(this.e)) {
            d();
            this.d.a();
        }
    }

    public void c() {
        this.b.a();
        this.a.a();
    }

    public void a(String str, String str2) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException("onCrash called from main thread!!!");
        }
        f.h().a("Answers", "Logged crash");
        this.a.c(SessionEvent.a(str, str2));
    }

    public void a(String str) {
    }

    public void d() {
        f.h().a("Answers", "Logged install");
        this.a.b(SessionEvent.a());
    }

    public void a(Activity activity, Type type) {
        f.h().a("Answers", "Logged lifecycle event: " + type.name());
        this.a.a(SessionEvent.a(type, activity));
    }

    public void a() {
        f.h().a("Answers", "Flush events when app is backgrounded");
        this.a.c();
    }

    public void a(io.fabric.sdk.android.services.settings.b bVar, String str) {
        this.c.a(bVar.h);
        this.a.a(bVar, str);
    }

    boolean a(long j) {
        return !this.d.b() && b(j);
    }

    boolean b(long j) {
        return System.currentTimeMillis() - j < 3600000;
    }
}
