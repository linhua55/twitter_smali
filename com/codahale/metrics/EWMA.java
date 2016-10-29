package com.codahale.metrics;

import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class EWMA {
    private static final int FIFTEEN_MINUTES = 15;
    private static final int FIVE_MINUTES = 5;
    private static final int INTERVAL = 5;
    private static final double M15_ALPHA;
    private static final double M1_ALPHA;
    private static final double M5_ALPHA;
    private static final int ONE_MINUTE = 1;
    private static final double SECONDS_PER_MINUTE = 60.0d;
    private final double alpha;
    private volatile boolean initialized;
    private final double interval;
    private volatile double rate;
    private final LongAdder uncounted;

    static {
        M1_ALPHA = 1.0d - Math.exp(-0.08333333333333333d);
        M5_ALPHA = 1.0d - Math.exp(-0.016666666666666666d);
        M15_ALPHA = 1.0d - Math.exp(-0.005555555555555555d);
    }

    public static EWMA oneMinuteEWMA() {
        return new EWMA(M1_ALPHA, 5, TimeUnit.SECONDS);
    }

    public static EWMA fiveMinuteEWMA() {
        return new EWMA(M5_ALPHA, 5, TimeUnit.SECONDS);
    }

    public static EWMA fifteenMinuteEWMA() {
        return new EWMA(M15_ALPHA, 5, TimeUnit.SECONDS);
    }

    public EWMA(double d, long j, TimeUnit timeUnit) {
        this.initialized = false;
        this.rate = M5_ALPHA;
        this.uncounted = new LongAdder();
        this.interval = (double) timeUnit.toNanos(j);
        this.alpha = d;
    }

    public void update(long j) {
        this.uncounted.add(j);
    }

    public void tick() {
        double sumThenReset = ((double) this.uncounted.sumThenReset()) / this.interval;
        if (this.initialized) {
            this.rate = ((sumThenReset - this.rate) * this.alpha) + this.rate;
            return;
        }
        this.rate = sumThenReset;
        this.initialized = true;
    }

    public double getRate(TimeUnit timeUnit) {
        return this.rate * ((double) timeUnit.toNanos(1));
    }
}
