package com.crashlytics.android.answers;

import cwp;
import java.util.Random;

/* compiled from: Twttr */
class t implements cwp {
    final cwp a;
    final Random b;
    final double c;

    public t(cwp cwp, double d) {
        this(cwp, d, new Random());
    }

    public t(cwp cwp, double d, Random random) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        } else if (cwp == null) {
            throw new NullPointerException("backoff must not be null");
        } else if (random == null) {
            throw new NullPointerException("random must not be null");
        } else {
            this.a = cwp;
            this.c = d;
            this.b = random;
        }
    }

    public long a(int i) {
        return (long) (a() * ((double) this.a.a(i)));
    }

    double a() {
        double d = 1.0d - this.c;
        return d + (((this.c + 1.0d) - d) * this.b.nextDouble());
    }
}
