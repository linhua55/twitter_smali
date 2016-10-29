package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.SystemClock;

@oi
final class pv {
    private long a;
    private long b;

    public pv() {
        this.a = -1;
        this.b = -1;
    }

    public long a() {
        return this.b;
    }

    public void b() {
        this.b = SystemClock.elapsedRealtime();
    }

    public void c() {
        this.a = SystemClock.elapsedRealtime();
    }

    public Bundle d() {
        Bundle bundle = new Bundle();
        bundle.putLong("topen", this.a);
        bundle.putLong("tclose", this.b);
        return bundle;
    }
}
