package com.codahale.metrics;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

/* compiled from: Twttr */
public class MetricRegistry implements MetricSet {
    private final List<MetricRegistryListener> listeners;
    private final ConcurrentMap<String, Metric> metrics;

    /* compiled from: Twttr */
    interface MetricBuilder<T extends Metric> {
        public static final MetricBuilder<Counter> COUNTERS;
        public static final MetricBuilder<Histogram> HISTOGRAMS;
        public static final MetricBuilder<Meter> METERS;
        public static final MetricBuilder<Timer> TIMERS;

        boolean isInstance(Metric metric);

        T newMetric();

        static {
            COUNTERS = new MetricBuilder<Counter>() {
                public Counter newMetric() {
                    return new Counter();
                }

                public boolean isInstance(Metric metric) {
                    return Counter.class.isInstance(metric);
                }
            };
            HISTOGRAMS = new MetricBuilder<Histogram>() {
                public Histogram newMetric() {
                    return new Histogram(new ExponentiallyDecayingReservoir());
                }

                public boolean isInstance(Metric metric) {
                    return Histogram.class.isInstance(metric);
                }
            };
            METERS = new MetricBuilder<Meter>() {
                public Meter newMetric() {
                    return new Meter();
                }

                public boolean isInstance(Metric metric) {
                    return Meter.class.isInstance(metric);
                }
            };
            TIMERS = new MetricBuilder<Timer>() {
                public Timer newMetric() {
                    return new Timer();
                }

                public boolean isInstance(Metric metric) {
                    return Timer.class.isInstance(metric);
                }
            };
        }
    }

    public static String name(String str, String... strArr) {
        StringBuilder stringBuilder = new StringBuilder();
        append(stringBuilder, str);
        if (strArr != null) {
            for (String append : strArr) {
                append(stringBuilder, append);
            }
        }
        return stringBuilder.toString();
    }

    public static String name(Class<?> cls, String... strArr) {
        return name(cls.getName(), strArr);
    }

    private static void append(StringBuilder stringBuilder, String str) {
        if (str != null && !str.isEmpty()) {
            if (stringBuilder.length() > 0) {
                stringBuilder.append('.');
            }
            stringBuilder.append(str);
        }
    }

    public MetricRegistry() {
        this.metrics = buildMap();
        this.listeners = new CopyOnWriteArrayList();
    }

    protected ConcurrentMap<String, Metric> buildMap() {
        return new ConcurrentHashMap();
    }

    public <T extends Metric> T register(String str, T t) throws IllegalArgumentException {
        if (t instanceof MetricSet) {
            registerAll(str, (MetricSet) t);
        } else if (((Metric) this.metrics.putIfAbsent(str, t)) == null) {
            onMetricAdded(str, t);
        } else {
            throw new IllegalArgumentException("A metric named " + str + " already exists");
        }
        return t;
    }

    public void registerAll(MetricSet metricSet) throws IllegalArgumentException {
        registerAll(null, metricSet);
    }

    public Counter counter(String str) {
        return (Counter) getOrAdd(str, MetricBuilder.COUNTERS);
    }

    public Histogram histogram(String str) {
        return (Histogram) getOrAdd(str, MetricBuilder.HISTOGRAMS);
    }

    public Meter meter(String str) {
        return (Meter) getOrAdd(str, MetricBuilder.METERS);
    }

    public Timer timer(String str) {
        return (Timer) getOrAdd(str, MetricBuilder.TIMERS);
    }

    public boolean remove(String str) {
        Metric metric = (Metric) this.metrics.remove(str);
        if (metric == null) {
            return false;
        }
        onMetricRemoved(str, metric);
        return true;
    }

    public void removeMatching(MetricFilter metricFilter) {
        for (Entry entry : this.metrics.entrySet()) {
            if (metricFilter.matches((String) entry.getKey(), (Metric) entry.getValue())) {
                remove((String) entry.getKey());
            }
        }
    }

    public void addListener(MetricRegistryListener metricRegistryListener) {
        this.listeners.add(metricRegistryListener);
        for (Entry entry : this.metrics.entrySet()) {
            notifyListenerOfAddedMetric(metricRegistryListener, (Metric) entry.getValue(), (String) entry.getKey());
        }
    }

    public void removeListener(MetricRegistryListener metricRegistryListener) {
        this.listeners.remove(metricRegistryListener);
    }

    public SortedSet<String> getNames() {
        return Collections.unmodifiableSortedSet(new TreeSet(this.metrics.keySet()));
    }

    public SortedMap<String, Gauge> getGauges() {
        return getGauges(MetricFilter.ALL);
    }

    public SortedMap<String, Gauge> getGauges(MetricFilter metricFilter) {
        return getMetrics(Gauge.class, metricFilter);
    }

    public SortedMap<String, Counter> getCounters() {
        return getCounters(MetricFilter.ALL);
    }

    public SortedMap<String, Counter> getCounters(MetricFilter metricFilter) {
        return getMetrics(Counter.class, metricFilter);
    }

    public SortedMap<String, Histogram> getHistograms() {
        return getHistograms(MetricFilter.ALL);
    }

    public SortedMap<String, Histogram> getHistograms(MetricFilter metricFilter) {
        return getMetrics(Histogram.class, metricFilter);
    }

    public SortedMap<String, Meter> getMeters() {
        return getMeters(MetricFilter.ALL);
    }

    public SortedMap<String, Meter> getMeters(MetricFilter metricFilter) {
        return getMetrics(Meter.class, metricFilter);
    }

    public SortedMap<String, Timer> getTimers() {
        return getTimers(MetricFilter.ALL);
    }

    public SortedMap<String, Timer> getTimers(MetricFilter metricFilter) {
        return getMetrics(Timer.class, metricFilter);
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private <T extends com.codahale.metrics.Metric> T getOrAdd(java.lang.String r4, com.codahale.metrics.MetricRegistry.MetricBuilder<T> r5) {
        /*
        r3 = this;
        r0 = r3.metrics;
        r0 = r0.get(r4);
        r0 = (com.codahale.metrics.Metric) r0;
        r1 = r5.isInstance(r0);
        if (r1 == 0) goto L_0x000f;
    L_0x000e:
        return r0;
    L_0x000f:
        if (r0 != 0) goto L_0x0029;
    L_0x0011:
        r0 = r5.newMetric();	 Catch:{ IllegalArgumentException -> 0x001a }
        r0 = r3.register(r4, r0);	 Catch:{ IllegalArgumentException -> 0x001a }
        goto L_0x000e;
    L_0x001a:
        r0 = move-exception;
        r0 = r3.metrics;
        r0 = r0.get(r4);
        r0 = (com.codahale.metrics.Metric) r0;
        r1 = r5.isInstance(r0);
        if (r1 != 0) goto L_0x000e;
    L_0x0029:
        r0 = new java.lang.IllegalArgumentException;
        r1 = new java.lang.StringBuilder;
        r1.<init>();
        r1 = r1.append(r4);
        r2 = " is already used for a different type of metric";
        r1 = r1.append(r2);
        r1 = r1.toString();
        r0.<init>(r1);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.codahale.metrics.MetricRegistry.getOrAdd(java.lang.String, com.codahale.metrics.MetricRegistry$MetricBuilder):T");
    }

    private <T extends Metric> SortedMap<String, T> getMetrics(Class<T> cls, MetricFilter metricFilter) {
        SortedMap treeMap = new TreeMap();
        for (Entry entry : this.metrics.entrySet()) {
            if (cls.isInstance(entry.getValue()) && metricFilter.matches((String) entry.getKey(), (Metric) entry.getValue())) {
                treeMap.put(entry.getKey(), (Metric) entry.getValue());
            }
        }
        return Collections.unmodifiableSortedMap(treeMap);
    }

    private void onMetricAdded(String str, Metric metric) {
        for (MetricRegistryListener notifyListenerOfAddedMetric : this.listeners) {
            notifyListenerOfAddedMetric(notifyListenerOfAddedMetric, metric, str);
        }
    }

    private void notifyListenerOfAddedMetric(MetricRegistryListener metricRegistryListener, Metric metric, String str) {
        if (metric instanceof Gauge) {
            metricRegistryListener.onGaugeAdded(str, (Gauge) metric);
        } else if (metric instanceof Counter) {
            metricRegistryListener.onCounterAdded(str, (Counter) metric);
        } else if (metric instanceof Histogram) {
            metricRegistryListener.onHistogramAdded(str, (Histogram) metric);
        } else if (metric instanceof Meter) {
            metricRegistryListener.onMeterAdded(str, (Meter) metric);
        } else if (metric instanceof Timer) {
            metricRegistryListener.onTimerAdded(str, (Timer) metric);
        } else {
            throw new IllegalArgumentException("Unknown metric type: " + metric.getClass());
        }
    }

    private void onMetricRemoved(String str, Metric metric) {
        for (MetricRegistryListener notifyListenerOfRemovedMetric : this.listeners) {
            notifyListenerOfRemovedMetric(str, metric, notifyListenerOfRemovedMetric);
        }
    }

    private void notifyListenerOfRemovedMetric(String str, Metric metric, MetricRegistryListener metricRegistryListener) {
        if (metric instanceof Gauge) {
            metricRegistryListener.onGaugeRemoved(str);
        } else if (metric instanceof Counter) {
            metricRegistryListener.onCounterRemoved(str);
        } else if (metric instanceof Histogram) {
            metricRegistryListener.onHistogramRemoved(str);
        } else if (metric instanceof Meter) {
            metricRegistryListener.onMeterRemoved(str);
        } else if (metric instanceof Timer) {
            metricRegistryListener.onTimerRemoved(str);
        } else {
            throw new IllegalArgumentException("Unknown metric type: " + metric.getClass());
        }
    }

    private void registerAll(String str, MetricSet metricSet) throws IllegalArgumentException {
        for (Entry entry : metricSet.getMetrics().entrySet()) {
            if (entry.getValue() instanceof MetricSet) {
                registerAll(name(str, (String) entry.getKey()), (MetricSet) entry.getValue());
            } else {
                register(name(str, (String) entry.getKey()), (Metric) entry.getValue());
            }
        }
    }

    public Map<String, Metric> getMetrics() {
        return Collections.unmodifiableMap(this.metrics);
    }
}
