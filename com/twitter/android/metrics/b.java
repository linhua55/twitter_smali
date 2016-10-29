package com.twitter.android.metrics;

import android.os.SystemClock;
import com.twitter.library.metrics.ForegroundMetricTracker;
import com.twitter.library.metrics.ForegroundMetricTracker.BackgroundBehavior;
import defpackage.arj;
import defpackage.arp;
import defpackage.arq;

/* compiled from: Twttr */
public class b extends arj {
    long a;
    long b;
    long c;
    boolean d;
    boolean e;
    private long w;
    private long x;

    public b(String str, String str2, arp arp, arq arq) {
        super(str, arp, str2, arq, false);
        ForegroundMetricTracker.a(this, BackgroundBehavior.a);
    }

    protected void b() {
        this.a = SystemClock.elapsedRealtime();
        super.b();
    }

    protected void c() {
        super.c();
        o();
    }

    public void aK_() {
        this.d = true;
        this.w = SystemClock.elapsedRealtime();
    }

    public void aL_() {
        if (this.d) {
            this.b = SystemClock.elapsedRealtime() - this.w;
            this.d = false;
        }
    }

    public void f() {
        this.e = true;
        this.x = SystemClock.elapsedRealtime();
    }

    public void g() {
        if (this.e) {
            this.c = SystemClock.elapsedRealtime() - this.x;
            this.e = false;
        }
    }
}
