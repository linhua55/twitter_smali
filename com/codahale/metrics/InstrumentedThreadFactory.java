package com.codahale.metrics;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class InstrumentedThreadFactory implements ThreadFactory {
    private static final AtomicLong nameCounter;
    private final Meter created;
    private final ThreadFactory delegate;
    private final Counter running;
    private final Meter terminated;

    /* compiled from: Twttr */
    class InstrumentedRunnable implements Runnable {
        private final Runnable task;

        InstrumentedRunnable(Runnable runnable) {
            this.task = runnable;
        }

        public void run() {
            InstrumentedThreadFactory.this.running.inc();
            try {
                this.task.run();
            } finally {
                InstrumentedThreadFactory.this.running.dec();
                InstrumentedThreadFactory.this.terminated.mark();
            }
        }
    }

    static {
        nameCounter = new AtomicLong();
    }

    public InstrumentedThreadFactory(ThreadFactory threadFactory, MetricRegistry metricRegistry) {
        this(threadFactory, metricRegistry, "instrumented-thread-delegate-" + nameCounter.incrementAndGet());
    }

    public InstrumentedThreadFactory(ThreadFactory threadFactory, MetricRegistry metricRegistry, String str) {
        this.delegate = threadFactory;
        this.created = metricRegistry.meter(MetricRegistry.name(str, "created"));
        this.running = metricRegistry.counter(MetricRegistry.name(str, "running"));
        this.terminated = metricRegistry.meter(MetricRegistry.name(str, "terminated"));
    }

    public Thread newThread(Runnable runnable) {
        Thread newThread = this.delegate.newThread(new InstrumentedRunnable(runnable));
        this.created.mark();
        return newThread;
    }
}
