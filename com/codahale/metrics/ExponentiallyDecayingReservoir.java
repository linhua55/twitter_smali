package com.codahale.metrics;

import com.codahale.metrics.WeightedSnapshot.WeightedSample;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentSkipListMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* compiled from: Twttr */
public class ExponentiallyDecayingReservoir implements Reservoir {
    private static final double DEFAULT_ALPHA = 0.015d;
    private static final int DEFAULT_SIZE = 1028;
    private static final long RESCALE_THRESHOLD;
    private final double alpha;
    private final Clock clock;
    private final AtomicLong count;
    private final ReentrantReadWriteLock lock;
    private final AtomicLong nextScaleTime;
    private final int size;
    private volatile long startTime;
    private final ConcurrentSkipListMap<Double, WeightedSample> values;

    static {
        RESCALE_THRESHOLD = TimeUnit.HOURS.toNanos(1);
    }

    public ExponentiallyDecayingReservoir() {
        this(DEFAULT_SIZE, DEFAULT_ALPHA);
    }

    public ExponentiallyDecayingReservoir(int i, double d) {
        this(i, d, Clock.defaultClock());
    }

    public ExponentiallyDecayingReservoir(int i, double d, Clock clock) {
        this.values = new ConcurrentSkipListMap();
        this.lock = new ReentrantReadWriteLock();
        this.alpha = d;
        this.size = i;
        this.clock = clock;
        this.count = new AtomicLong(0);
        this.startTime = currentTimeInSeconds();
        this.nextScaleTime = new AtomicLong(clock.getTick() + RESCALE_THRESHOLD);
    }

    public int size() {
        return (int) Math.min((long) this.size, this.count.get());
    }

    public void update(long j) {
        update(j, currentTimeInSeconds());
    }

    public void update(long j, long j2) {
        rescaleIfNeeded();
        lockForRegularUsage();
        try {
            double weight = weight(j2 - this.startTime);
            WeightedSample weightedSample = new WeightedSample(j, weight);
            double nextDouble = weight / ThreadLocalRandom.current().nextDouble();
            if (this.count.incrementAndGet() <= ((long) this.size)) {
                this.values.put(Double.valueOf(nextDouble), weightedSample);
            } else {
                Object obj = (Double) this.values.firstKey();
                if (obj.doubleValue() < nextDouble && this.values.putIfAbsent(Double.valueOf(nextDouble), weightedSample) == null) {
                    while (this.values.remove(obj) == null) {
                        Double d = (Double) this.values.firstKey();
                    }
                }
            }
            unlockForRegularUsage();
        } catch (Throwable th) {
            unlockForRegularUsage();
        }
    }

    private void rescaleIfNeeded() {
        long tick = this.clock.getTick();
        long j = this.nextScaleTime.get();
        if (tick >= j) {
            rescale(tick, j);
        }
    }

    public Snapshot getSnapshot() {
        lockForRegularUsage();
        try {
            Snapshot weightedSnapshot = new WeightedSnapshot(this.values.values());
            return weightedSnapshot;
        } finally {
            unlockForRegularUsage();
        }
    }

    private long currentTimeInSeconds() {
        return TimeUnit.MILLISECONDS.toSeconds(this.clock.getTime());
    }

    private double weight(long j) {
        return Math.exp(this.alpha * ((double) j));
    }

    private void rescale(long j, long j2) {
        if (this.nextScaleTime.compareAndSet(j2, RESCALE_THRESHOLD + j)) {
            lockForRescale();
            try {
                long j3 = this.startTime;
                this.startTime = currentTimeInSeconds();
                double exp = Math.exp(((double) (this.startTime - j3)) * (-this.alpha));
                Iterator it = new ArrayList(this.values.keySet()).iterator();
                while (it.hasNext()) {
                    Double d = (Double) it.next();
                    WeightedSample weightedSample = (WeightedSample) this.values.remove(d);
                    this.values.put(Double.valueOf(d.doubleValue() * exp), new WeightedSample(weightedSample.value, weightedSample.weight * exp));
                }
                this.count.set((long) this.values.size());
            } finally {
                unlockForRescale();
            }
        }
    }

    private void unlockForRescale() {
        this.lock.writeLock().unlock();
    }

    private void lockForRescale() {
        this.lock.writeLock().lock();
    }

    private void lockForRegularUsage() {
        this.lock.readLock().lock();
    }

    private void unlockForRegularUsage() {
        this.lock.readLock().unlock();
    }
}
