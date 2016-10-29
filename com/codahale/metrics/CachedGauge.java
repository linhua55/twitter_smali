package com.codahale.metrics;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public abstract class CachedGauge<T> implements Gauge<T> {
    private final Clock clock;
    private final AtomicLong reloadAt;
    private final long timeoutNS;
    private volatile T value;

    protected abstract T loadValue();

    protected CachedGauge(long j, TimeUnit timeUnit) {
        this(Clock.defaultClock(), j, timeUnit);
    }

    protected CachedGauge(Clock clock, long j, TimeUnit timeUnit) {
        this.clock = clock;
        this.reloadAt = new AtomicLong(0);
        this.timeoutNS = timeUnit.toNanos(j);
    }

    public T getValue() {
        if (shouldLoad()) {
            this.value = loadValue();
        }
        return this.value;
    }

    private boolean shouldLoad() {
        long j;
        long tick;
        do {
            tick = this.clock.getTick();
            j = this.reloadAt.get();
            if (j > tick) {
                return false;
            }
        } while (!this.reloadAt.compareAndSet(j, tick + this.timeoutNS));
        return true;
    }
}
