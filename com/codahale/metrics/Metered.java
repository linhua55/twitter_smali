package com.codahale.metrics;

/* compiled from: Twttr */
public interface Metered extends Counting, Metric {
    long getCount();

    double getFifteenMinuteRate();

    double getFiveMinuteRate();

    double getMeanRate();

    double getOneMinuteRate();
}
