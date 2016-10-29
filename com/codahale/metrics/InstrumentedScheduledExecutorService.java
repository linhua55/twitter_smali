package com.codahale.metrics;

import com.codahale.metrics.Timer.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class InstrumentedScheduledExecutorService implements ScheduledExecutorService {
    private static final AtomicLong nameCounter;
    private final Meter completed;
    private final ScheduledExecutorService delegate;
    private final Timer duration;
    private final Histogram percentOfPeriod;
    private final Counter running;
    private final Meter scheduledOnce;
    private final Counter scheduledOverrun;
    private final Meter scheduledRepetitively;
    private final Meter submitted;

    /* compiled from: Twttr */
    class InstrumentedCallable<T> implements Callable<T> {
        private final Callable<T> task;

        InstrumentedCallable(Callable<T> callable) {
            this.task = callable;
        }

        public T call() throws Exception {
            InstrumentedScheduledExecutorService.this.running.inc();
            Context time = InstrumentedScheduledExecutorService.this.duration.time();
            try {
                T call = this.task.call();
                return call;
            } finally {
                time.stop();
                InstrumentedScheduledExecutorService.this.running.dec();
                InstrumentedScheduledExecutorService.this.completed.mark();
            }
        }
    }

    /* compiled from: Twttr */
    class InstrumentedPeriodicRunnable implements Runnable {
        private final Runnable command;
        private final long periodInNanos;

        InstrumentedPeriodicRunnable(Runnable runnable, long j, TimeUnit timeUnit) {
            this.command = runnable;
            this.periodInNanos = timeUnit.toNanos(j);
        }

        public void run() {
            InstrumentedScheduledExecutorService.this.running.inc();
            Context time = InstrumentedScheduledExecutorService.this.duration.time();
            try {
                this.command.run();
            } finally {
                long stop = time.stop();
                InstrumentedScheduledExecutorService.this.running.dec();
                InstrumentedScheduledExecutorService.this.completed.mark();
                if (stop > this.periodInNanos) {
                    InstrumentedScheduledExecutorService.this.scheduledOverrun.inc();
                }
                InstrumentedScheduledExecutorService.this.percentOfPeriod.update((stop * 100) / this.periodInNanos);
            }
        }
    }

    /* compiled from: Twttr */
    class InstrumentedRunnable implements Runnable {
        private final Runnable command;

        InstrumentedRunnable(Runnable runnable) {
            this.command = runnable;
        }

        public void run() {
            InstrumentedScheduledExecutorService.this.running.inc();
            Context time = InstrumentedScheduledExecutorService.this.duration.time();
            try {
                this.command.run();
            } finally {
                time.stop();
                InstrumentedScheduledExecutorService.this.running.dec();
                InstrumentedScheduledExecutorService.this.completed.mark();
            }
        }
    }

    static {
        nameCounter = new AtomicLong();
    }

    public InstrumentedScheduledExecutorService(ScheduledExecutorService scheduledExecutorService, MetricRegistry metricRegistry) {
        this(scheduledExecutorService, metricRegistry, "instrumented-scheduled-executor-service-" + nameCounter.incrementAndGet());
    }

    public InstrumentedScheduledExecutorService(ScheduledExecutorService scheduledExecutorService, MetricRegistry metricRegistry, String str) {
        this.delegate = scheduledExecutorService;
        this.submitted = metricRegistry.meter(MetricRegistry.name(str, "submitted"));
        this.running = metricRegistry.counter(MetricRegistry.name(str, "running"));
        this.completed = metricRegistry.meter(MetricRegistry.name(str, "completed"));
        this.duration = metricRegistry.timer(MetricRegistry.name(str, "duration"));
        this.scheduledOnce = metricRegistry.meter(MetricRegistry.name(str, "scheduled.once"));
        this.scheduledRepetitively = metricRegistry.meter(MetricRegistry.name(str, "scheduled.repetitively"));
        this.scheduledOverrun = metricRegistry.counter(MetricRegistry.name(str, "scheduled.overrun"));
        this.percentOfPeriod = metricRegistry.histogram(MetricRegistry.name(str, "scheduled.percent-of-period"));
    }

    public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        this.scheduledOnce.mark();
        return this.delegate.schedule(new InstrumentedRunnable(runnable), j, timeUnit);
    }

    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        this.scheduledOnce.mark();
        return this.delegate.schedule(new InstrumentedCallable(callable), j, timeUnit);
    }

    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        this.scheduledRepetitively.mark();
        return this.delegate.scheduleAtFixedRate(new InstrumentedPeriodicRunnable(runnable, j2, timeUnit), j, j2, timeUnit);
    }

    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        this.scheduledRepetitively.mark();
        return this.delegate.scheduleAtFixedRate(new InstrumentedRunnable(runnable), j, j2, timeUnit);
    }

    public void shutdown() {
        this.delegate.shutdown();
    }

    public List<Runnable> shutdownNow() {
        return this.delegate.shutdownNow();
    }

    public boolean isShutdown() {
        return this.delegate.isShutdown();
    }

    public boolean isTerminated() {
        return this.delegate.isTerminated();
    }

    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.delegate.awaitTermination(j, timeUnit);
    }

    public <T> Future<T> submit(Callable<T> callable) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedCallable(callable));
    }

    public <T> Future<T> submit(Runnable runnable, T t) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedRunnable(runnable), t);
    }

    public Future<?> submit(Runnable runnable) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedRunnable(runnable));
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAll(instrument(collection));
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAll(instrument(collection), j, timeUnit);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAny(instrument(collection));
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAny(instrument(collection), j, timeUnit);
    }

    private <T> Collection<? extends Callable<T>> instrument(Collection<? extends Callable<T>> collection) {
        Collection arrayList = new ArrayList(collection.size());
        for (Callable instrumentedCallable : collection) {
            arrayList.add(new InstrumentedCallable(instrumentedCallable));
        }
        return arrayList;
    }

    public void execute(Runnable runnable) {
        this.submitted.mark();
        this.delegate.execute(new InstrumentedRunnable(runnable));
    }
}
