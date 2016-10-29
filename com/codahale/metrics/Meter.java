package com.codahale.metrics;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class Meter implements Metered {
    private static final long TICK_INTERVAL;
    private final Clock clock;
    private final LongAdder count;
    private final AtomicLong lastTick;
    private final EWMA m15Rate;
    private final EWMA m1Rate;
    private final EWMA m5Rate;
    private final long startTime;

    static {
        TICK_INTERVAL = TimeUnit.SECONDS.toNanos(5);
    }

    public Meter() {
        this(Clock.defaultClock());
    }

    public Meter(Clock clock) {
        this.m1Rate = EWMA.oneMinuteEWMA();
        this.m5Rate = EWMA.fiveMinuteEWMA();
        this.m15Rate = EWMA.fifteenMinuteEWMA();
        this.count = new LongAdder();
        this.clock = clock;
        this.startTime = this.clock.getTick();
        this.lastTick = new AtomicLong(this.startTime);
    }

    public void mark() {
        mark(1);
    }

    public void mark(long j) {
        tickIfNecessary();
        this.count.add(j);
        this.m1Rate.update(j);
        this.m5Rate.update(j);
        this.m15Rate.update(j);
    }

    private void tickIfNecessary() {
        long j = this.lastTick.get();
        long tick = this.clock.getTick();
        long j2 = tick - j;
        if (j2 > TICK_INTERVAL) {
            if (this.lastTick.compareAndSet(j, tick - (j2 % TICK_INTERVAL))) {
                tick = j2 / TICK_INTERVAL;
                for (j = 0; j < tick; j++) {
                    this.m1Rate.tick();
                    this.m5Rate.tick();
                    this.m15Rate.tick();
                }
            }
        }
    }

    public long getCount() {
        return this.count.sum();
    }

    public double getFifteenMinuteRate() {
        tickIfNecessary();
        return this.m15Rate.getRate(TimeUnit.SECONDS);
    }

    public double getFiveMinuteRate() {
        tickIfNecessary();
        return this.m5Rate.getRate(TimeUnit.SECONDS);
    }

    public double getMeanRate() {
        if (getCount() == 0) {
            return 0.0d;
        }
        return (((double) getCount()) / ((double) (this.clock.getTick() - this.startTime))) * ((double) TimeUnit.SECONDS.toNanos(1));
    }

    public double getOneMinuteRate() {
        tickIfNecessary();
        return this.m1Rate.getRate(TimeUnit.SECONDS);
    }
}
