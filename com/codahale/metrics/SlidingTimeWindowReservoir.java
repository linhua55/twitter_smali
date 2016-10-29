package com.codahale.metrics;

import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class SlidingTimeWindowReservoir implements Reservoir {
    private static final int COLLISION_BUFFER = 256;
    private static final int TRIM_THRESHOLD = 256;
    private final Clock clock;
    private final AtomicLong count;
    private final AtomicLong lastTick;
    private final ConcurrentSkipListMap<Long, Long> measurements;
    private final long window;

    public SlidingTimeWindowReservoir(long j, TimeUnit timeUnit) {
        this(j, timeUnit, Clock.defaultClock());
    }

    public SlidingTimeWindowReservoir(long j, TimeUnit timeUnit, Clock clock) {
        this.clock = clock;
        this.measurements = new ConcurrentSkipListMap();
        this.window = timeUnit.toNanos(j) * 256;
        this.lastTick = new AtomicLong(clock.getTick() * 256);
        this.count = new AtomicLong();
    }

    public int size() {
        trim();
        return this.measurements.size();
    }

    public void update(long j) {
        if (this.count.incrementAndGet() % 256 == 0) {
            trim();
        }
        this.measurements.put(Long.valueOf(getTick()), Long.valueOf(j));
    }

    public Snapshot getSnapshot() {
        trim();
        return new UniformSnapshot(this.measurements.values());
    }

    private long getTick() {
        long tick;
        long j;
        do {
            j = this.lastTick.get();
            tick = this.clock.getTick() * 256;
            if (tick - j <= 0) {
                tick = 1 + j;
            }
        } while (!this.lastTick.compareAndSet(j, tick));
        return tick;
    }

    private void trim() {
        this.measurements.headMap(Long.valueOf(getTick() - this.window)).clear();
    }
}
