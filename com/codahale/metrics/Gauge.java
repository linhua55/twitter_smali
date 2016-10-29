package com.codahale.metrics;

/* compiled from: Twttr */
public interface Gauge<T> extends Metric {
    T getValue();
}
