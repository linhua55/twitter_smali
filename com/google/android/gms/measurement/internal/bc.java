package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.recyclerview.BuildConfig;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.internal.bm;
import com.google.android.gms.internal.vj;
import com.google.android.gms.measurement.a;

public class bc extends cl {
    private final String a;
    private final char b;
    private final long c;
    private final be d;
    private final be e;
    private final be f;
    private final be g;
    private final be h;
    private final be i;
    private final be j;
    private final be k;
    private final be l;

    bc(bx bxVar) {
        super(bxVar);
        this.a = u().a();
        this.c = u().M();
        if (u().O()) {
            this.b = u().N() ? 'P' : 'C';
        } else {
            this.b = u().N() ? 'p' : 'c';
        }
        this.d = new be(this, 6, false, false);
        this.e = new be(this, 6, true, false);
        this.f = new be(this, 6, false, true);
        this.g = new be(this, 5, false, false);
        this.h = new be(this, 5, true, false);
        this.i = new be(this, 5, false, true);
        this.j = new be(this, 4, false, false);
        this.k = new be(this, 3, false, false);
        this.l = new be(this, 2, false, false);
    }

    private static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return BuildConfig.VERSION_NAME;
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf != -1 ? str.substring(0, lastIndexOf) : str;
    }

    static String a(boolean z, Object obj) {
        if (obj == null) {
            return BuildConfig.VERSION_NAME;
        }
        Object valueOf = obj instanceof Integer ? Long.valueOf((long) ((Integer) obj).intValue()) : obj;
        if (valueOf instanceof Long) {
            if (!z) {
                return String.valueOf(valueOf);
            }
            if (Math.abs(((Long) valueOf).longValue()) < 100) {
                return String.valueOf(valueOf);
            }
            String str = String.valueOf(valueOf).charAt(0) == '-' ? "-" : BuildConfig.VERSION_NAME;
            String valueOf2 = String.valueOf(Math.abs(((Long) valueOf).longValue()));
            return str + Math.round(Math.pow(10.0d, (double) (valueOf2.length() - 1))) + "..." + str + Math.round(Math.pow(10.0d, (double) valueOf2.length()) - 1.0d);
        } else if (valueOf instanceof Boolean) {
            return String.valueOf(valueOf);
        } else {
            if (!(valueOf instanceof Throwable)) {
                return z ? "-" : String.valueOf(valueOf);
            } else {
                Throwable th = (Throwable) valueOf;
                StringBuilder stringBuilder = new StringBuilder(th.toString());
                String a = a(a.class.getCanonicalName());
                String a2 = a(bx.class.getCanonicalName());
                for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (!stackTraceElement.isNativeMethod()) {
                        String className = stackTraceElement.getClassName();
                        if (className != null) {
                            className = a(className);
                            if (className.equals(a) || className.equals(a2)) {
                                stringBuilder.append(": ");
                                stringBuilder.append(stackTraceElement);
                                break;
                            }
                        } else {
                            continue;
                        }
                    }
                }
                return stringBuilder.toString();
            }
        }
    }

    static String a(boolean z, String str, Object obj, Object obj2, Object obj3) {
        if (str == null) {
            Object obj4 = BuildConfig.VERSION_NAME;
        }
        Object a = a(z, obj);
        Object a2 = a(z, obj2);
        Object a3 = a(z, obj3);
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = BuildConfig.VERSION_NAME;
        if (!TextUtils.isEmpty(obj4)) {
            stringBuilder.append(obj4);
            str2 = ": ";
        }
        if (!TextUtils.isEmpty(a)) {
            stringBuilder.append(str2);
            stringBuilder.append(a);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a2)) {
            stringBuilder.append(str2);
            stringBuilder.append(a2);
            str2 = ", ";
        }
        if (!TextUtils.isEmpty(a3)) {
            stringBuilder.append(str2);
            stringBuilder.append(a3);
        }
        return stringBuilder.toString();
    }

    public String A() {
        Pair a = t().b.a();
        return a == null ? null : String.valueOf(a.second) + ":" + ((String) a.first);
    }

    protected void a() {
    }

    protected void a(int i, String str) {
        Log.println(i, this.a, str);
    }

    public void a(int i, String str, Object obj, Object obj2, Object obj3) {
        bm.a((Object) str);
        bt k = this.n.k();
        if (k == null) {
            a(6, "Scheduler not set. Not logging error/warn.");
        } else if (!k.E()) {
            a(6, "Scheduler not initialized. Not logging error/warn.");
        } else if (k.F()) {
            a(6, "Scheduler shutdown. Not logging error/warn.");
        } else {
            if (i < 0) {
                i = 0;
            }
            if (i >= "01VDIWEA?".length()) {
                i = "01VDIWEA?".length() - 1;
            }
            String str2 = "1" + "01VDIWEA?".charAt(i) + this.b + this.c + ":" + a(true, str, obj, obj2, obj3);
            k.a(new bd(this, str2.length() > AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT ? str.substring(0, AccessibilityNodeInfoCompat.ACTION_NEXT_HTML_ELEMENT) : str2));
        }
    }

    protected void a(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && a(i)) {
            a(i, a(false, str, obj, obj2, obj3));
        }
        if (!z2 && i >= 5) {
            a(i, str, obj, obj2, obj3);
        }
    }

    protected boolean a(int i) {
        return Log.isLoggable(this.a, i);
    }

    public be b() {
        return this.d;
    }

    public be c() {
        return this.g;
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

    public be v() {
        return this.h;
    }

    public be w() {
        return this.i;
    }

    public be x() {
        return this.j;
    }

    public be y() {
        return this.k;
    }

    public be z() {
        return this.l;
    }
}
