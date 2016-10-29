package com.codahale.metrics;

import java.io.OutputStream;

/* compiled from: Twttr */
public abstract class Snapshot {
    public abstract void dump(OutputStream outputStream);

    public abstract long getMax();

    public abstract double getMean();

    public abstract long getMin();

    public abstract double getStdDev();

    public abstract double getValue(double d);

    public abstract long[] getValues();

    public abstract int size();

    public double getMedian() {
        return getValue(0.5d);
    }

    public double get75thPercentile() {
        return getValue(0.75d);
    }

    public double get95thPercentile() {
        return getValue(0.95d);
    }

    public double get98thPercentile() {
        return getValue(0.98d);
    }

    public double get99thPercentile() {
        return getValue(0.99d);
    }

    public double get999thPercentile() {
        return getValue(0.999d);
    }
}
