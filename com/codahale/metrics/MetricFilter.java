package com.codahale.metrics;

/* compiled from: Twttr */
public interface MetricFilter {
    public static final MetricFilter ALL;

    boolean matches(String str, Metric metric);

    static {
        ALL = new MetricFilter() {
            public boolean matches(String str, Metric metric) {
                return true;
            }
        };
    }
}
