package com.codahale.metrics;

import com.codahale.metrics.Timer.Context;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* compiled from: Twttr */
public class InstrumentedExecutorService implements ExecutorService {
    private static final AtomicLong nameCounter;
    private final Meter completed;
    private final ExecutorService delegate;
    private final Timer duration;
    private final Counter running;
    private final Meter submitted;

    /* compiled from: Twttr */
    class InstrumentedCallable<T> implements Callable<T> {
        private final Callable<T> callable;

        InstrumentedCallable(Callable<T> callable) {
            this.callable = callable;
        }

        public T call() throws Exception {
            InstrumentedExecutorService.this.running.inc();
            Context time = InstrumentedExecutorService.this.duration.time();
            try {
                T call = this.callable.call();
                return call;
            } finally {
                time.stop();
                InstrumentedExecutorService.this.running.dec();
                InstrumentedExecutorService.this.completed.mark();
            }
        }
    }

    /* compiled from: Twttr */
    class InstrumentedRunnable implements Runnable {
        private final Runnable task;

        InstrumentedRunnable(Runnable runnable) {
            this.task = runnable;
        }

        public void run() {
            InstrumentedExecutorService.this.running.inc();
            Context time = InstrumentedExecutorService.this.duration.time();
            try {
                this.task.run();
            } finally {
                time.stop();
                InstrumentedExecutorService.this.running.dec();
                InstrumentedExecutorService.this.completed.mark();
            }
        }
    }

    static {
        nameCounter = new AtomicLong();
    }

    public InstrumentedExecutorService(ExecutorService executorService, MetricRegistry metricRegistry) {
        this(executorService, metricRegistry, "instrumented-delegate-" + nameCounter.incrementAndGet());
    }

    public InstrumentedExecutorService(ExecutorService executorService, MetricRegistry metricRegistry, String str) {
        this.delegate = executorService;
        this.submitted = metricRegistry.meter(MetricRegistry.name(str, "submitted"));
        this.running = metricRegistry.counter(MetricRegistry.name(str, "running"));
        this.completed = metricRegistry.meter(MetricRegistry.name(str, "completed"));
        this.duration = metricRegistry.timer(MetricRegistry.name(str, "duration"));
    }

    public void execute(Runnable runnable) {
        this.submitted.mark();
        this.delegate.execute(new InstrumentedRunnable(runnable));
    }

    public Future<?> submit(Runnable runnable) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedRunnable(runnable));
    }

    public <T> Future<T> submit(Runnable runnable, T t) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedRunnable(runnable), t);
    }

    public <T> Future<T> submit(Callable<T> callable) {
        this.submitted.mark();
        return this.delegate.submit(new InstrumentedCallable(callable));
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAll(instrument(collection));
    }

    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAll(instrument(collection), j, timeUnit);
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws ExecutionException, InterruptedException {
        this.submitted.mark((long) collection.size());
        return this.delegate.invokeAny(instrument(collection));
    }

    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
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
}
