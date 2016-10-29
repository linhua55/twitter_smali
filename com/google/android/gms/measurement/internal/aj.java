package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.net.Uri.Builder;
import android.os.Process;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.widget.RecyclerView.ItemAnimator;
import android.text.TextUtils;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.i;
import com.google.android.gms.internal.vj;
import com.google.android.gms.internal.vv;

public class aj extends ck {
    static final String a;
    private Boolean b;

    static {
        a = String.valueOf(f.b / 1000).replaceAll("(\\d+)(\\d)(\\d\\d)", "$1.$2.$3");
    }

    aj(bx bxVar) {
        super(bxVar);
    }

    int A() {
        return 500;
    }

    public long B() {
        return (long) ((Integer) av.m.b()).intValue();
    }

    public long C() {
        return (long) ((Integer) av.n.b()).intValue();
    }

    public long D() {
        return (long) ((Integer) av.o.b()).intValue();
    }

    int E() {
        return 25;
    }

    int F() {
        return 50;
    }

    long G() {
        return 3600000;
    }

    long H() {
        return 60000;
    }

    long I() {
        return 61000;
    }

    long J() {
        return ((Long) av.A.b()).longValue();
    }

    public String K() {
        return "google_app_measurement.db";
    }

    public String L() {
        return "google_app_measurement2.db";
    }

    public long M() {
        return (long) (f.b / 1000);
    }

    public boolean N() {
        return i.a;
    }

    public boolean O() {
        if (this.b == null) {
            synchronized (this) {
                if (this.b == null) {
                    ApplicationInfo applicationInfo = m().getApplicationInfo();
                    String a = vv.a(m(), Process.myPid());
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        boolean z = str != null && str.equals(a);
                        this.b = Boolean.valueOf(z);
                    }
                    if (this.b == null) {
                        this.b = Boolean.TRUE;
                        s().b().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.b.booleanValue();
    }

    public long P() {
        return ((Long) av.y.b()).longValue();
    }

    public long Q() {
        return ((Long) av.u.b()).longValue();
    }

    public long R() {
        return 1000;
    }

    public long S() {
        return Math.max(0, ((Long) av.e.b()).longValue());
    }

    public int T() {
        return Math.max(0, ((Integer) av.k.b()).intValue());
    }

    public int U() {
        return Math.max(1, ((Integer) av.l.b()).intValue());
    }

    public String V() {
        return (String) av.q.b();
    }

    public long W() {
        return ((Long) av.f.b()).longValue();
    }

    public long X() {
        return Math.max(0, ((Long) av.r.b()).longValue());
    }

    public long Y() {
        return Math.max(0, ((Long) av.t.b()).longValue());
    }

    public long Z() {
        return ((Long) av.s.b()).longValue();
    }

    long a(String str) {
        return a(str, av.d);
    }

    public long a(String str, aw<Long> awVar) {
        if (str == null) {
            return ((Long) awVar.b()).longValue();
        }
        Object a = p().a(str, awVar.a());
        if (TextUtils.isEmpty(a)) {
            return ((Long) awVar.b()).longValue();
        }
        try {
            return ((Long) awVar.a(Long.valueOf(Long.valueOf(a).longValue()))).longValue();
        } catch (NumberFormatException e) {
            return ((Long) awVar.b()).longValue();
        }
    }

    String a() {
        return (String) av.c.b();
    }

    public String a(String str, String str2) {
        Builder builder = new Builder();
        builder.scheme((String) av.g.b()).authority((String) av.h.b()).path("config/app/" + str).appendQueryParameter("app_instance_id", str2).appendQueryParameter("platform", "android").appendQueryParameter("gmp_version", String.valueOf(M()));
        return builder.build().toString();
    }

    public long aa() {
        return Math.max(0, ((Long) av.v.b()).longValue());
    }

    public long ab() {
        return Math.max(0, ((Long) av.w.b()).longValue());
    }

    public int ac() {
        return Math.min(20, Math.max(0, ((Integer) av.x.b()).intValue()));
    }

    public int b() {
        return 25;
    }

    int b(String str) {
        return b(str, av.z);
    }

    public int b(String str, aw<Integer> awVar) {
        if (str == null) {
            return ((Integer) awVar.b()).intValue();
        }
        Object a = p().a(str, awVar.a());
        if (TextUtils.isEmpty(a)) {
            return ((Integer) awVar.b()).intValue();
        }
        try {
            return ((Integer) awVar.a(Integer.valueOf(Integer.valueOf(a).intValue()))).intValue();
        } catch (NumberFormatException e) {
            return ((Integer) awVar.b()).intValue();
        }
    }

    int c() {
        return 32;
    }

    public int c(String str) {
        return b(str, av.i);
    }

    public int d(String str) {
        return Math.max(0, b(str, av.j));
    }

    public /* bridge */ /* synthetic */ void d() {
        super.d();
    }

    public int e(String str) {
        return Math.max(0, Math.min(1000000, b(str, av.p)));
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

    public int v() {
        return 24;
    }

    int w() {
        return 36;
    }

    int x() {
        return AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY;
    }

    public int y() {
        return 36;
    }

    public int z() {
        return ItemAnimator.FLAG_MOVED;
    }
}
