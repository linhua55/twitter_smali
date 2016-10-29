package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.support.annotation.WorkerThread;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.ads.identifier.AdvertisingIdClient.Info;
import com.google.android.gms.measurement.e;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.Locale;

class bn extends cl {
    static final Pair<String, Long> a;
    public final br b;
    public final bq c;
    public final bq d;
    public final bq e;
    public final bq f;
    public final bq g;
    public final bq h;
    public final bq i;
    public final bp j;
    public final bq k;
    public final bq l;
    public boolean m;
    private SharedPreferences o;
    private String p;
    private boolean q;
    private long r;
    private final SecureRandom s;

    static {
        a = new Pair(TtmlNode.ANONYMOUS_REGION_ID, Long.valueOf(0));
    }

    bn(bx bxVar) {
        super(bxVar);
        this.b = new br("health_monitor", u().S(), null);
        this.c = new bq(this, "last_upload", 0);
        this.d = new bq(this, "last_upload_attempt", 0);
        this.e = new bq(this, "backoff", 0);
        this.f = new bq(this, "last_delete_stale", 0);
        this.h = new bq(this, "time_before_start", 10000);
        this.i = new bq(this, "session_timeout", 1800000);
        this.j = new bp(this, "start_new_session", true);
        this.k = new bq(this, "last_pause_time", 0);
        this.l = new bq(this, "time_active", 0);
        this.s = new SecureRandom();
        this.g = new bq(this, "midnight_offset", 0);
    }

    @WorkerThread
    private SharedPreferences y() {
        f();
        G();
        return this.o;
    }

    @WorkerThread
    Pair<String, Boolean> a(String str) {
        f();
        long b = l().b();
        if (this.p != null && b < this.r) {
            return new Pair(this.p, Boolean.valueOf(this.q));
        }
        this.r = b + u().a(str);
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(true);
        try {
            Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(m());
            this.p = advertisingIdInfo.getId();
            this.q = advertisingIdInfo.isLimitAdTrackingEnabled();
        } catch (Throwable th) {
            s().y().a("Unable to get advertising id", th);
            this.p = TtmlNode.ANONYMOUS_REGION_ID;
        }
        AdvertisingIdClient.setShouldSkipGmsCoreVersionCheck(false);
        return new Pair(this.p, Boolean.valueOf(this.q));
    }

    protected void a() {
        this.o = m().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.m = this.o.getBoolean("has_been_opened", false);
        if (!this.m) {
            Editor edit = this.o.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
    }

    @WorkerThread
    void a(boolean z) {
        f();
        s().z().a("Setting useService", Boolean.valueOf(z));
        Editor edit = y().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    String b() {
        this.s.nextBytes(new byte[16]);
        return String.format(Locale.US, "%032x", new Object[]{new BigInteger(1, r0)});
    }

    String b(String str) {
        String str2 = (String) a(str).first;
        if (ag.e("MD5") == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new Object[]{new BigInteger(1, ag.e("MD5").digest(str2.getBytes()))});
    }

    @WorkerThread
    void b(boolean z) {
        f();
        s().z().a("Setting measurementEnabled", Boolean.valueOf(z));
        Editor edit = y().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    @WorkerThread
    long c() {
        G();
        f();
        long a = this.g.a();
        if (a != 0) {
            return a;
        }
        a = (long) (this.s.nextInt(86400000) + 1);
        this.g.a(a);
        return a;
    }

    @WorkerThread
    Boolean v() {
        f();
        return !y().contains("use_service") ? null : Boolean.valueOf(y().getBoolean("use_service", false));
    }

    @WorkerThread
    boolean w() {
        f();
        return y().getBoolean("measurement_enabled", !e.d());
    }

    @WorkerThread
    protected String x() {
        f();
        String string = y().getString("previous_os_version", null);
        String c = j().c();
        if (!(TextUtils.isEmpty(c) || c.equals(string))) {
            Editor edit = y().edit();
            edit.putString("previous_os_version", c);
            edit.apply();
        }
        return string;
    }
}
