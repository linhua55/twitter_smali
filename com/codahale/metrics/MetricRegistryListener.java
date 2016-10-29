package com.codahale.metrics;

import java.util.EventListener;

/* compiled from: Twttr */
public interface MetricRegistryListener extends EventListener {

    /* compiled from: Twttr */
    public abstract class Base implements MetricRegistryListener {
        public void onGaugeAdded(String str, Gauge<?> gauge) {
        }

        public void onGaugeRemoved(String str) {
        }

        public void onCounterAdded(String str, Counter counter) {
        }

        public void onCounterRemoved(String str) {
        }

        public void onHistogramAdded(String str, Histogram histogram) {
        }

        public void onHistogramRemoved(String str) {
        }

        public void onMeterAdded(String str, Meter meter) {
        }

        public void onMeterRemoved(String str) {
        }

        public void onTimerAdded(String str, Timer timer) {
        }

        public void onTimerRemoved(String str) {
        }
    }

    void onCounterAdded(String str, Counter counter);

    void onCounterRemoved(String str);

    void onGaugeAdded(String str, Gauge<?> gauge);

    void onGaugeRemoved(String str);

    void onHistogramAdded(String str, Histogram histogram);

    void onHistogramRemoved(String str);

    void onMeterAdded(String str, Meter meter);

    void onMeterRemoved(String str);

    void onTimerAdded(String str, Timer timer);

    void onTimerRemoved(String str);
}
