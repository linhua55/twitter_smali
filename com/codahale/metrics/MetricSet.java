package com.codahale.metrics;

import java.util.Map;

/* compiled from: Twttr */
public interface MetricSet extends Metric {
    Map<String, Metric> getMetrics();
}
