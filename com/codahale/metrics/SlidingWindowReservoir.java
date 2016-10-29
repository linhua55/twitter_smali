package com.codahale.metrics;

/* compiled from: Twttr */
public class SlidingWindowReservoir implements Reservoir {
    private long count;
    private final long[] measurements;

    public SlidingWindowReservoir(int i) {
        this.measurements = new long[i];
        this.count = 0;
    }

    public synchronized int size() {
        return (int) Math.min(this.count, (long) this.measurements.length);
    }

    public synchronized void update(long j) {
        long[] jArr = this.measurements;
        long j2 = this.count;
        this.count = 1 + j2;
        jArr[(int) (j2 % ((long) this.measurements.length))] = j;
    }

    public Snapshot getSnapshot() {
        long[] jArr = new long[size()];
        for (int i = 0; i < jArr.length; i++) {
            synchronized (this) {
                jArr[i] = this.measurements[i];
            }
        }
        return new UniformSnapshot(jArr);
    }
}
