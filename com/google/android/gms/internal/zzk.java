package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
import java.util.Map.Entry;

public abstract class zzk<T> implements Comparable<zzk<T>> {
    private final xj a;
    private final int b;
    private final String c;
    private final int d;
    private final uz e;
    private Integer f;
    private ua g;
    private boolean h;
    private boolean i;
    private boolean j;
    private long k;
    private wa l;
    private aw m;

    public zzk(int i, String str, uz uzVar) {
        this.a = xj.a ? new xj() : null;
        this.h = true;
        this.i = false;
        this.j = false;
        this.k = 0;
        this.m = null;
        this.b = i;
        this.c = str;
        this.e = uzVar;
        a(new es());
        this.d = a(str);
    }

    private static int a(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String host = parse.getHost();
                if (host != null) {
                    return host.hashCode();
                }
            }
        }
        return 0;
    }

    private byte[] a(Map<String, String> map, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            for (Entry entry : map.entrySet()) {
                stringBuilder.append(URLEncoder.encode((String) entry.getKey(), str));
                stringBuilder.append('=');
                stringBuilder.append(URLEncoder.encode((String) entry.getValue(), str));
                stringBuilder.append('&');
            }
            return stringBuilder.toString().getBytes(str);
        } catch (Throwable e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    public int a(zzk<T> com_google_android_gms_internal_zzk_T) {
        zza q = q();
        zza q2 = com_google_android_gms_internal_zzk_T.q();
        return q == q2 ? this.f.intValue() - com_google_android_gms_internal_zzk_T.f.intValue() : q2.ordinal() - q.ordinal();
    }

    protected abstract uy<T> a(pn pnVar);

    public final zzk<?> a(int i) {
        this.f = Integer.valueOf(i);
        return this;
    }

    public zzk<?> a(aw awVar) {
        this.m = awVar;
        return this;
    }

    public zzk<?> a(ua uaVar) {
        this.g = uaVar;
        return this;
    }

    public zzk<?> a(wa waVar) {
        this.l = waVar;
        return this;
    }

    protected zzr a(zzr com_google_android_gms_internal_zzr) {
        return com_google_android_gms_internal_zzr;
    }

    public Map<String, String> a() throws zza {
        return Collections.emptyMap();
    }

    protected abstract void a(T t);

    public int b() {
        return this.b;
    }

    public void b(zzr com_google_android_gms_internal_zzr) {
        if (this.e != null) {
            this.e.a(com_google_android_gms_internal_zzr);
        }
    }

    public void b(String str) {
        if (xj.a) {
            this.a.a(str, Thread.currentThread().getId());
        } else if (this.k == 0) {
            this.k = SystemClock.elapsedRealtime();
        }
    }

    public int c() {
        return this.d;
    }

    void c(String str) {
        if (this.g != null) {
            this.g.b(this);
        }
        if (xj.a) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new ty(this, str, id));
                return;
            }
            this.a.a(str, id);
            this.a.a(toString());
            return;
        }
        if (SystemClock.elapsedRealtime() - this.k >= 3000) {
            xi.b("%d ms: %s", new Object[]{Long.valueOf(SystemClock.elapsedRealtime() - this.k), toString()});
        }
    }

    public /* synthetic */ int compareTo(Object obj) {
        return a((zzk) obj);
    }

    public String d() {
        return this.c;
    }

    public String e() {
        return d();
    }

    public aw f() {
        return this.m;
    }

    public boolean g() {
        return this.i;
    }

    @Deprecated
    protected Map<String, String> h() throws zza {
        return l();
    }

    @Deprecated
    protected String i() {
        return m();
    }

    @Deprecated
    public String j() {
        return n();
    }

    @Deprecated
    public byte[] k() throws zza {
        Map h = h();
        return (h == null || h.size() <= 0) ? null : a(h, i());
    }

    protected Map<String, String> l() throws zza {
        return null;
    }

    protected String m() {
        return "UTF-8";
    }

    public String n() {
        return "application/x-www-form-urlencoded; charset=" + m();
    }

    public byte[] o() throws zza {
        Map l = l();
        return (l == null || l.size() <= 0) ? null : a(l, m());
    }

    public final boolean p() {
        return this.h;
    }

    public zza q() {
        return zza.b;
    }

    public final int r() {
        return this.l.a();
    }

    public wa s() {
        return this.l;
    }

    public void t() {
        this.j = true;
    }

    public String toString() {
        return (this.i ? "[X] " : "[ ] ") + d() + " " + ("0x" + Integer.toHexString(c())) + " " + q() + " " + this.f;
    }

    public boolean u() {
        return this.j;
    }
}
