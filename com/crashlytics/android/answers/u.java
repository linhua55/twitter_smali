package com.crashlytics.android.answers;

import com.google.android.exoplayer.C;
import cwt;

/* compiled from: Twttr */
class u {
    long a;
    private cwt b;

    public u(cwt cwt) {
        if (cwt == null) {
            throw new NullPointerException("retryState must not be null");
        }
        this.b = cwt;
    }

    public boolean a(long j) {
        return j - this.a >= C.MICROS_PER_SECOND * this.b.a();
    }

    public void b(long j) {
        this.a = j;
        this.b = this.b.b();
    }

    public void a() {
        this.a = 0;
        this.b = this.b.c();
    }
}
