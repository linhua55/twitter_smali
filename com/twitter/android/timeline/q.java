package com.twitter.android.timeline;

import android.os.SystemClock;
import arf;
import com.twitter.refresh.widget.j;
import defpackage.ard;

/* compiled from: Twttr */
public class q implements j {
    private final ard a;
    private final arf b;
    private long c;

    public q(ard ard, arf arf) {
        this.a = ard;
        this.b = arf;
    }

    public void a() {
        this.c = SystemClock.elapsedRealtime();
    }

    public void b() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.c;
        if (elapsedRealtime > 0) {
            this.a.a(elapsedRealtime);
        }
        this.b.f();
    }
}
