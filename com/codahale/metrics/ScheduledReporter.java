package com.codahale.metrics;

import java.io.Closeable;
import java.util.Locale;
import java.util.SortedMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
public abstract class ScheduledReporter implements Reporter, Closeable {
    private static final AtomicInteger FACTORY_ID;
    private static final b LOG;
    private final double durationFactor;
    private final String durationUnit;
    private final ScheduledExecutorService executor;
    private final MetricFilter filter;
    private final double rateFactor;
    private final String rateUnit;
    private final MetricRegistry registry;

    /* compiled from: Twttr */
    class NamedThreadFactory implements ThreadFactory {
        private final ThreadGroup group;
        private final String namePrefix;
        private final AtomicInteger threadNumber;

        private NamedThreadFactory(String str) {
            this.threadNumber = new AtomicInteger(1);
            SecurityManager securityManager = System.getSecurityManager();
            this.group = securityManager != null ? securityManager.getThreadGroup() : Thread.currentThread().getThreadGroup();
            this.namePrefix = "metrics-" + str + "-thread-";
        }

        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(this.group, runnable, this.namePrefix + this.threadNumber.getAndIncrement(), 0);
            thread.setDaemon(true);
            if (thread.getPriority() != 5) {
                thread.setPriority(5);
            }
            return thread;
        }
    }

    public abstract void report(SortedMap<String, Gauge> sortedMap, SortedMap<String, Counter> sortedMap2, SortedMap<String, Histogram> sortedMap3, SortedMap<String, Meter> sortedMap4, SortedMap<String, Timer> sortedMap5);

    static {
        LOG = c.a(ScheduledReporter.class);
        FACTORY_ID = new AtomicInteger();
    }

    protected ScheduledReporter(MetricRegistry metricRegistry, String str, MetricFilter metricFilter, TimeUnit timeUnit, TimeUnit timeUnit2) {
        this(metricRegistry, str, metricFilter, timeUnit, timeUnit2, Executors.newSingleThreadScheduledExecutor(new NamedThreadFactory(null)));
    }

    protected ScheduledReporter(MetricRegistry metricRegistry, String str, MetricFilter metricFilter, TimeUnit timeUnit, TimeUnit timeUnit2, ScheduledExecutorService scheduledExecutorService) {
        this.registry = metricRegistry;
        this.filter = metricFilter;
        this.executor = scheduledExecutorService;
        this.rateFactor = (double) timeUnit.toSeconds(1);
        this.rateUnit = calculateRateUnit(timeUnit);
        this.durationFactor = 1.0d / ((double) timeUnit2.toNanos(1));
        this.durationUnit = timeUnit2.toString().toLowerCase(Locale.US);
    }

    public void start(long j, TimeUnit timeUnit) {
        this.executor.scheduleAtFixedRate(new Runnable() {
            public void run() {
                try {
                    ScheduledReporter.this.report();
                } catch (RuntimeException e) {
                    ScheduledReporter.LOG.b("RuntimeException thrown from {}#report. Exception was suppressed.", ScheduledReporter.this.getClass().getSimpleName(), e);
                }
            }
        }, j, j, timeUnit);
    }

    public void stop() {
        this.executor.shutdown();
        try {
            if (!this.executor.awaitTermination(1, TimeUnit.SECONDS)) {
                this.executor.shutdownNow();
                if (!this.executor.awaitTermination(1, TimeUnit.SECONDS)) {
                    System.err.println(getClass().getSimpleName() + ": ScheduledExecutorService did not terminate");
                }
            }
        } catch (InterruptedException e) {
            this.executor.shutdownNow();
            Thread.currentThread().interrupt();
        }
    }

    public void close() {
        stop();
    }

    public void report() {
        synchronized (this) {
            report(this.registry.getGauges(this.filter), this.registry.getCounters(this.filter), this.registry.getHistograms(this.filter), this.registry.getMeters(this.filter), this.registry.getTimers(this.filter));
        }
    }

    protected String getRateUnit() {
        return this.rateUnit;
    }

    protected String getDurationUnit() {
        return this.durationUnit;
    }

    protected double convertDuration(double d) {
        return this.durationFactor * d;
    }

    protected double convertRate(double d) {
        return this.rateFactor * d;
    }

    private String calculateRateUnit(TimeUnit timeUnit) {
        String toLowerCase = timeUnit.toString().toLowerCase(Locale.US);
        return toLowerCase.substring(0, toLowerCase.length() - 1);
    }
}
