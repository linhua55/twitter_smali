package com.codahale.metrics;

/* compiled from: Twttr */
public class Histogram implements Counting, Metric, Sampling {
    private final LongAdder count;
    private final Reservoir reservoir;

    public Histogram(Reservoir reservoir) {
        this.reservoir = reservoir;
        this.count = new LongAdder();
    }

    public void update(int i) {
        update((long) i);
    }

    public void update(long j) {
        this.count.increment();
        this.reservoir.update(j);
    }

    public long getCount() {
        return this.count.sum();
    }

    public Snapshot getSnapshot() {
        return this.reservoir.getSnapshot();
    }
}
