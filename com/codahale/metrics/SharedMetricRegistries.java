package com.codahale.metrics;

import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* compiled from: Twttr */
public class SharedMetricRegistries {
    private static final ConcurrentMap<String, MetricRegistry> REGISTRIES;

    static {
        REGISTRIES = new ConcurrentHashMap();
    }

    private SharedMetricRegistries() {
    }

    public static void clear() {
        REGISTRIES.clear();
    }

    public static Set<String> names() {
        return REGISTRIES.keySet();
    }

    public static void remove(String str) {
        REGISTRIES.remove(str);
    }

    public static MetricRegistry add(String str, MetricRegistry metricRegistry) {
        return (MetricRegistry) REGISTRIES.putIfAbsent(str, metricRegistry);
    }

    public static MetricRegistry getOrCreate(String str) {
        MetricRegistry metricRegistry = (MetricRegistry) REGISTRIES.get(str);
        if (metricRegistry != null) {
            return metricRegistry;
        }
        metricRegistry = new MetricRegistry();
        MetricRegistry add = add(str, metricRegistry);
        return add == null ? metricRegistry : add;
    }
}
