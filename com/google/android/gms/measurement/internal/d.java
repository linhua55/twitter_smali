package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.measurement.b;

public class d extends cl {
    private h a;
    private b b;
    private boolean c;

    protected d(bx bxVar) {
        super(bxVar);
    }

    private void a(String str, String str2, Bundle bundle, boolean z, String str3) {
        a(str, str2, bundle, z, str3, l().a());
    }

    private void a(String str, String str2, Bundle bundle, boolean z, String str3, long j) {
        bm.a(str);
        o().b(str2);
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            int b = u().b();
            int i = 0;
            for (String str4 : bundle.keySet()) {
                o().d(str4);
                if (ag.a(str4)) {
                    int i2 = i + 1;
                    bm.b(i2 <= b, "Event can't contain more then " + b + " params");
                    i = i2;
                }
                Object a = o().a(str4, bundle.get(str4));
                if (a != null) {
                    o().a(bundle2, str4, a);
                }
            }
        }
        int w = u().w();
        bundle2.putString("_o", str.length() <= w ? str : str.substring(0, w));
        a(str, str2, j, bundle2, z, str3);
    }

    @WorkerThread
    private void a(String str, String str2, Object obj, long j) {
        bm.a(str);
        bm.a(str2);
        f();
        d();
        G();
        if (!t().w()) {
            s().y().a("User property not set since app measurement is disabled");
        } else if (this.n.b()) {
            s().y().a("Setting user property (FE)", str2, obj);
            k().a(new UserAttributeParcel(str2, j, obj, str));
        }
    }

    @WorkerThread
    private void a(boolean z) {
        f();
        d();
        G();
        s().y().a("Setting app measurement enabled (FE)", Boolean.valueOf(z));
        t().b(z);
        k().c();
    }

    @WorkerThread
    private void b(String str, String str2, long j, Bundle bundle, boolean z, String str3) {
        bm.a(str);
        bm.a(str2);
        bm.a(bundle);
        f();
        G();
        if (t().w()) {
            if (!this.c) {
                this.c = true;
                v();
            }
            if (z && this.b != null && !ag.g(str2)) {
                s().y().a("Passing event to registered event handler (FE)", str2, bundle);
                this.b.a(str, str2, bundle, j);
                return;
            } else if (this.n.b()) {
                s().y().a("Logging event (FE)", str2, bundle);
                k().a(new EventParcel(str2, new EventParams(bundle), str, j), str3);
                return;
            } else {
                return;
            }
        }
        s().y().a("Event not sent since app measurement is disabled");
    }

    @WorkerThread
    private void v() {
        try {
            a(Class.forName(w()));
        } catch (ClassNotFoundException e) {
            s().x().a("Tag Manager is not found and thus will not be used");
        }
    }

    private String w() {
        return "com.google.android.gms.tagmanager.TagManagerService";
    }

    protected void a() {
    }

    @WorkerThread
    public void a(Class<?> cls) {
        try {
            cls.getDeclaredMethod("initialize", new Class[]{Context.class}).invoke(null, new Object[]{m()});
        } catch (Exception e) {
            s().c().a("Failed to invoke Tag Manager's initialize() method", e);
        }
    }

    protected void a(String str, String str2, long j, Bundle bundle, boolean z, String str3) {
        bm.a(bundle);
        r().a(new f(this, str, str2, j, bundle, z, str3));
    }

    void a(String str, String str2, long j, Object obj) {
        r().a(new g(this, str, str2, obj, j));
    }

    public void a(String str, String str2, Bundle bundle) {
        d();
        a(str, str2, bundle, true, null);
    }

    public void a(String str, String str2, Object obj) {
        bm.a(str);
        long a = l().a();
        o().c(str2);
        if (obj != null) {
            o().b(str2, obj);
            Object c = o().c(str2, obj);
            if (c != null) {
                a(str, str2, a, c);
                return;
            }
            return;
        }
        a(str, str2, a, null);
    }

    @TargetApi(14)
    public void b() {
        if (m().getApplicationContext() instanceof Application) {
            Application application = (Application) m().getApplicationContext();
            if (this.a == null) {
                this.a = new h();
            }
            application.unregisterActivityLifecycleCallbacks(this.a);
            application.registerActivityLifecycleCallbacks(this.a);
            s().z().a("Registered activity lifecycle callback");
        }
    }

    @WorkerThread
    public void c() {
        f();
        d();
        G();
        if (this.n.b()) {
            k().v();
            String x = t().x();
            if (!TextUtils.isEmpty(x) && !x.equals(j().c())) {
                Bundle bundle = new Bundle();
                bundle.putString("_po", x);
                a("auto", "_ou", bundle);
            }
        }
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
