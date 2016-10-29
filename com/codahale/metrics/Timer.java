package com.codahale.metrics;

import java.io.Closeable;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class Timer implements Metered, Sampling {
    private final Clock clock;
    private final Histogram histogram;
    private final Meter meter;

    /* compiled from: Twttr */
    public class Context implements Closeable {
        private final Clock clock;
        private final long startTime;
        private final Timer timer;

        private Context(Timer timer, Clock clock) {
            this.timer = timer;
            this.clock = clock;
            this.startTime = clock.getTick();
        }

        public long stop() {
            long tick = this.clock.getTick() - this.startTime;
            this.timer.update(tick, TimeUnit.NANOSECONDS);
            return tick;
        }

        public void close() {
            stop();
        }
    }

    public Timer() {
        this(new ExponentiallyDecayingReservoir());
    }

    public Timer(Reservoir reservoir) {
        this(reservoir, Clock.defaultClock());
    }

    public Timer(Reservoir reservoir, Clock clock) {
        this.meter = new Meter(clock);
        this.clock = clock;
        this.histogram = new Histogram(reservoir);
    }

    public void update(long j, TimeUnit timeUnit) {
        update(timeUnit.toNanos(j));
    }

    public <T> T time(Callable<T> callable) throws Exception {
        long tick = this.clock.getTick();
        try {
            T call = callable.call();
            return call;
        } finally {
            update(this.clock.getTick() - tick);
        }
    }

    public Context time() {
        return new Context(this.clock, null);
    }

    public long getCount() {
        return this.histogram.getCount();
    }

    public double getFifteenMinuteRate() {
        return this.meter.getFifteenMinuteRate();
    }

    public double getFiveMinuteRate() {
        return this.meter.getFiveMinuteRate();
    }

    public double getMeanRate() {
        return this.meter.getMeanRate();
    }

    public double getOneMinuteRate() {
        return this.meter.getOneMinuteRate();
    }

    public Snapshot getSnapshot() {
        return this.histogram.getSnapshot();
    }

    private void update(long j) {
        if (j >= 0) {
            this.histogram.update(j);
            this.meter.mark();
        }
    }
}
