package com.twitter.android.metrics;

import android.os.SystemClock;
import defpackage.arj;
import defpackage.arp;
import defpackage.arq;
import defpackage.aru;

/* compiled from: Twttr */
public class e extends b {
    private final LaunchTracker w;

    public static e a(aru aru, long j) {
        arj a = aru.a("home:first_tweet");
        if (a == null) {
            a = aru.d(new e("home:first_tweet", n, aru));
            a.b(j);
        }
        return (e) a;
    }

    public e(String str, arp arp, arq arq) {
        super(str, str, arp, arq);
        this.p = "TTFT";
        this.w = LaunchTracker.a();
    }

    protected void c() {
        this.w.c();
    }

    public void aL_() {
        if (!this.d || this.i) {
            n();
            return;
        }
        super.aL_();
        if (this.w.b()) {
            a("home:first_tweet_cache" + this.w.a(false), this.b);
            a("home:first_tweet_cache" + this.w.a(true), SystemClock.elapsedRealtime() - this.a);
            return;
        }
        n();
    }

    public void g() {
        if (!this.e || this.i) {
            n();
            return;
        }
        super.g();
        if (this.w.b()) {
            a("home:first_tweet_api" + this.w.a(false), this.c);
            a("home:first_tweet_api" + this.w.a(true), SystemClock.elapsedRealtime() - this.a);
            return;
        }
        n();
    }

    private void a(String str, long j) {
        this.o = str;
        this.t = j;
        o();
    }
}
