package com.codahale.metrics;

/* compiled from: Twttr */
public abstract class DerivativeGauge<F, T> implements Gauge<T> {
    private final Gauge<F> base;

    protected abstract T transform(F f);

    protected DerivativeGauge(Gauge<F> gauge) {
        this.base = gauge;
    }

    public T getValue() {
        return transform(this.base.getValue());
    }
}
