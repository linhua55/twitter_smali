package com.crashlytics.android.core;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import com.crashlytics.android.answers.a;
import cxf;
import cxg;
import defpackage.ai;
import defpackage.am;
import defpackage.cxi;
import io.fabric.sdk.android.p;
import io.fabric.sdk.android.services.common.CommonUtils;
import io.fabric.sdk.android.services.common.o;
import io.fabric.sdk.android.services.common.s;
import io.fabric.sdk.android.services.concurrency.UnmetDependencyException;
import io.fabric.sdk.android.services.concurrency.k;
import io.fabric.sdk.android.services.concurrency.u;
import io.fabric.sdk.android.services.network.b;
import io.fabric.sdk.android.services.network.j;
import io.fabric.sdk.android.services.network.l;
import io.fabric.sdk.android.services.settings.q;
import io.fabric.sdk.android.services.settings.v;
import java.io.File;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@k(a = {ai.class})
/* compiled from: Twttr */
public class f extends p<Void> {
    private j A;
    private u B;
    private ai C;
    private final long a;
    private final ConcurrentHashMap<String, String> b;
    private File c;
    private cxf d;
    private x k;
    private x l;
    private y m;
    private aa n;
    private String o;
    private String p;
    private String q;
    private String r;
    private String s;
    private String t;
    private String u;
    private String v;
    private String w;
    private float x;
    private boolean y;
    private final bu z;

    protected /* synthetic */ Object f() {
        return d();
    }

    public f() {
        this(1.0f, null, null, false);
    }

    f(float f, y yVar, bu buVar, boolean z) {
        this(f, yVar, buVar, z, s.a("Crashlytics Exception Handler"));
    }

    f(float f, y yVar, bu buVar, boolean z, ExecutorService executorService) {
        this.o = null;
        this.p = null;
        this.q = null;
        this.x = f;
        if (yVar == null) {
            yVar = new s(null);
        }
        this.m = yVar;
        this.z = buVar;
        this.y = z;
        this.B = new u(executorService);
        this.b = new ConcurrentHashMap();
        this.a = System.currentTimeMillis();
    }

    protected boolean a_() {
        return a(super.E());
    }

    boolean a(Context context) {
        if (this.y) {
            return false;
        }
        this.t = new io.fabric.sdk.android.services.common.k().a(context);
        if (this.t == null) {
            return false;
        }
        io.fabric.sdk.android.f.h().c("CrashlyticsCore", "Initializing Crashlytics " + a());
        this.d = new cxg(this);
        this.l = new x("crash_marker", this.d);
        this.k = new x("initialization_marker", this.d);
        try {
            a(context, this.t);
            cd bdVar = new bd(context, h());
            boolean u = u();
            K();
            a(bdVar);
            if (!u || !CommonUtils.n(context)) {
                return true;
            }
            J();
            return false;
        } catch (CrashlyticsMissingDependencyException e) {
            throw new UnmetDependencyException(e);
        } catch (Throwable e2) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Crashlytics was not started due to an exception during initialization", e2);
            return false;
        }
    }

    private void a(Context context, String str) throws NameNotFoundException {
        l zVar = this.z != null ? new z(this.z) : null;
        this.A = new b(io.fabric.sdk.android.f.h());
        this.A.a(zVar);
        this.s = context.getPackageName();
        this.u = D().j();
        io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Installer package name is: " + this.u);
        PackageInfo packageInfo = context.getPackageManager().getPackageInfo(this.s, 0);
        this.v = Integer.toString(packageInfo.versionCode);
        this.w = packageInfo.versionName == null ? "0.0" : packageInfo.versionName;
        this.r = CommonUtils.m(context);
        a(this.r, b(context)).a(str, this.s);
    }

    private void a(cd cdVar) {
        try {
            io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Installing exception handler...");
            this.n = new aa(Thread.getDefaultUncaughtExceptionHandler(), this.B, D(), cdVar, this.d, this);
            this.n.b();
            Thread.setDefaultUncaughtExceptionHandler(this.n);
            io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Successfully installed exception handler.");
        } catch (Throwable e) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "There was a problem installing the exception handler.", e);
        }
    }

    protected Void d() {
        s();
        this.n.g();
        try {
            v b = q.a().b();
            if (b == null) {
                io.fabric.sdk.android.f.h().d("CrashlyticsCore", "Received null settings, skipping initialization!");
            } else if (b.d.c) {
                this.n.c();
                at a = a(b);
                if (a == null) {
                    io.fabric.sdk.android.f.h().d("CrashlyticsCore", "Unable to create a call to upload reports.");
                    t();
                } else {
                    new by(a).a(this.x);
                    t();
                }
            } else {
                io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Collection of crash reports disabled in Crashlytics settings.");
                t();
            }
        } catch (Throwable e) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Crashlytics encountered a problem during asynchronous initialization.", e);
        } finally {
            t();
        }
        return null;
    }

    public String b() {
        return "com.crashlytics.sdk.android.crashlytics-core";
    }

    public String a() {
        return "2.3.10.127";
    }

    public static f e() {
        return (f) io.fabric.sdk.android.f.a(f.class);
    }

    public void a(Throwable th) {
        if (this.y || !c("prior to logging exceptions.")) {
            return;
        }
        if (th == null) {
            io.fabric.sdk.android.f.h().a(5, "CrashlyticsCore", "Crashlytics is ignoring a request to log a null exception.");
        } else {
            this.n.a(Thread.currentThread(), th);
        }
    }

    public void a(String str) {
        a(3, "CrashlyticsCore", str);
    }

    private void a(int i, String str, String str2) {
        if (!this.y && c("prior to logging messages.")) {
            this.n.a(System.currentTimeMillis() - this.a, b(i, str, str2));
        }
    }

    public void b(String str) {
        if (!this.y) {
            this.q = d(str);
            this.n.a(this.o, this.q, this.p);
        }
    }

    public void a(String str, String str2) {
        if (!this.y) {
            if (str == null) {
                Context E = E();
                if (E == null || !CommonUtils.i(E)) {
                    io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Attempting to set custom attribute with null key, ignoring.", null);
                    return;
                }
                throw new IllegalArgumentException("Custom attribute key must not be null.");
            }
            String d = d(str);
            if (this.b.size() < 64 || this.b.containsKey(d)) {
                this.b.put(d, str2 == null ? BuildConfig.VERSION_NAME : d(str2));
                this.n.a(this.b);
                return;
            }
            io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Exceeded maximum number of custom attributes (64)");
        }
    }

    static void b(String str, String str2) {
        a aVar = (a) io.fabric.sdk.android.f.a(a.class);
        if (aVar != null) {
            aVar.a(new io.fabric.sdk.android.services.common.p(str, str2));
        }
    }

    static void c(String str, String str2) {
        a aVar = (a) io.fabric.sdk.android.f.a(a.class);
        if (aVar != null) {
            aVar.a(new o(str, str2));
        }
    }

    Map<String, String> g() {
        return Collections.unmodifiableMap(this.b);
    }

    a a(String str, boolean z) {
        return new a(str, z);
    }

    String h() {
        return this.s;
    }

    String i() {
        return this.t;
    }

    String j() {
        return this.u;
    }

    String k() {
        return this.w;
    }

    String l() {
        return this.v;
    }

    String m() {
        return CommonUtils.b(E(), "com.crashlytics.ApiEndpoint");
    }

    String n() {
        return this.r;
    }

    aa o() {
        return this.n;
    }

    String p() {
        return D().a() ? this.o : null;
    }

    String q() {
        return D().a() ? this.p : null;
    }

    String r() {
        return D().a() ? this.q : null;
    }

    private void J() {
        g gVar = new g(this);
        for (u a : I()) {
            gVar.a(a);
        }
        Future submit = F().f().submit(gVar);
        io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            submit.get(4, TimeUnit.SECONDS);
        } catch (Throwable e) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Crashlytics was interrupted during initialization.", e);
        } catch (Throwable e2) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Problem encountered during Crashlytics initialization.", e2);
        } catch (Throwable e22) {
            io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Crashlytics timed out during initialization.", e22);
        }
    }

    void s() {
        this.B.a(new h(this));
    }

    void t() {
        this.B.b(new i(this));
    }

    boolean u() {
        return ((Boolean) this.B.a(new j(this))).booleanValue();
    }

    am v() {
        if (this.C != null) {
            return this.C.a();
        }
        return null;
    }

    File w() {
        if (this.c == null) {
            this.c = new cxg(this).a();
        }
        return this.c;
    }

    boolean x() {
        return ((Boolean) q.a().a(new k(this), Boolean.valueOf(false))).booleanValue();
    }

    boolean y() {
        return new cxi(this).a().getBoolean("always_send_reports_opt_in", false);
    }

    @SuppressLint({"CommitPrefEdits"})
    void a(boolean z) {
        cxi cxi = new cxi(this);
        cxi.a(cxi.b().putBoolean("always_send_reports_opt_in", z));
    }

    boolean z() {
        return ((Boolean) q.a().a(new l(this), Boolean.valueOf(true))).booleanValue();
    }

    at a(v vVar) {
        if (vVar != null) {
            return new au(this, m(), vVar.a.d, this.A);
        }
        return null;
    }

    private void K() {
        if (Boolean.TRUE.equals((Boolean) this.B.a(new r(this.l)))) {
            try {
                this.m.a();
            } catch (Throwable e) {
                io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Exception thrown by CrashlyticsListener while notifying of previous crash.", e);
            }
        }
    }

    void A() {
        this.l.a();
    }

    private boolean a(Activity activity, io.fabric.sdk.android.services.settings.o oVar) {
        ay ayVar = new ay(activity, oVar);
        t tVar = new t(null);
        activity.runOnUiThread(new m(this, activity, tVar, ayVar, oVar));
        io.fabric.sdk.android.f.h().a("CrashlyticsCore", "Waiting for user opt-in.");
        tVar.b();
        return tVar.a();
    }

    static io.fabric.sdk.android.services.settings.p B() {
        v b = q.a().b();
        return b == null ? null : b.b;
    }

    private static boolean b(Context context) {
        return CommonUtils.a(context, "com.crashlytics.RequireBuildId", true);
    }

    private static String b(int i, String str, String str2) {
        return CommonUtils.b(i) + "/" + str + " " + str2;
    }

    private static boolean c(String str) {
        f e = e();
        if (e != null && e.n != null) {
            return true;
        }
        io.fabric.sdk.android.f.h().e("CrashlyticsCore", "Crashlytics must be initialized by calling Fabric.with(Context) " + str, null);
        return false;
    }

    private static String d(String str) {
        if (str == null) {
            return str;
        }
        str = str.trim();
        if (str.length() > AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) {
            return str.substring(0, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT);
        }
        return str;
    }

    private static int b(float f, int i) {
        return (int) (((float) i) * f);
    }
}
