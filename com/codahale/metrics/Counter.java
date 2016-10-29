package com.codahale.metrics;

/* compiled from: Twttr */
public class Counter implements Counting, Metric {
    private final LongAdder count;

    public Counter() {
        this.count = new LongAdder();
    }

    public void inc() {
        inc(1);
    }

    public void inc(long j) {
        this.count.add(j);
    }

    public void dec() {
        dec(1);
    }

    public void dec(long j) {
        this.count.add(-j);
    }

    public long getCount() {
        return this.count.sum();
    }
}
