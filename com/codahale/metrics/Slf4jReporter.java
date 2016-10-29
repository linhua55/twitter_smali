package com.codahale.metrics;

import com.google.android.exoplayer.text.CaptionStyleCompat;
import com.google.android.exoplayer.util.Util;
import com.google.android.exoplayer.util.extensions.Buffer;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import java.util.Map.Entry;
import java.util.SortedMap;
import java.util.concurrent.TimeUnit;
import org.slf4j.Marker;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
public class Slf4jReporter extends ScheduledReporter {
    private final LoggerProxy loggerProxy;
    private final Marker marker;

    /* compiled from: Twttr */
    /* renamed from: com.codahale.metrics.Slf4jReporter.1 */
    /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel;

        static {
            $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel = new int[LoggingLevel.values().length];
            try {
                $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[LoggingLevel.TRACE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[LoggingLevel.INFO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[LoggingLevel.WARN.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[LoggingLevel.ERROR.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[LoggingLevel.DEBUG.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private TimeUnit durationUnit;
        private MetricFilter filter;
        private b logger;
        private LoggingLevel loggingLevel;
        private Marker marker;
        private TimeUnit rateUnit;
        private final MetricRegistry registry;

        private Builder(MetricRegistry metricRegistry) {
            this.registry = metricRegistry;
            this.logger = c.a("metrics");
            this.marker = null;
            this.rateUnit = TimeUnit.SECONDS;
            this.durationUnit = TimeUnit.MILLISECONDS;
            this.filter = MetricFilter.ALL;
            this.loggingLevel = LoggingLevel.INFO;
        }

        public Builder outputTo(b bVar) {
            this.logger = bVar;
            return this;
        }

        public Builder markWith(Marker marker) {
            this.marker = marker;
            return this;
        }

        public Builder convertRatesTo(TimeUnit timeUnit) {
            this.rateUnit = timeUnit;
            return this;
        }

        public Builder convertDurationsTo(TimeUnit timeUnit) {
            this.durationUnit = timeUnit;
            return this;
        }

        public Builder filter(MetricFilter metricFilter) {
            this.filter = metricFilter;
            return this;
        }

        public Builder withLoggingLevel(LoggingLevel loggingLevel) {
            this.loggingLevel = loggingLevel;
            return this;
        }

        public Slf4jReporter build() {
            LoggerProxy traceLoggerProxy;
            switch (AnonymousClass1.$SwitchMap$com$codahale$metrics$Slf4jReporter$LoggingLevel[this.loggingLevel.ordinal()]) {
                case ModuleDescriptor.MODULE_VERSION /*1*/:
                    traceLoggerProxy = new TraceLoggerProxy(this.logger);
                    break;
                case Buffer.FLAG_DECODE_ONLY /*2*/:
                    traceLoggerProxy = new InfoLoggerProxy(this.logger);
                    break;
                case Util.TYPE_OTHER /*3*/:
                    traceLoggerProxy = new WarnLoggerProxy(this.logger);
                    break;
                case CaptionStyleCompat.EDGE_TYPE_DEPRESSED /*4*/:
                    traceLoggerProxy = new ErrorLoggerProxy(this.logger);
                    break;
                default:
                    traceLoggerProxy = new DebugLoggerProxy(this.logger);
                    break;
            }
            return new Slf4jReporter(traceLoggerProxy, this.marker, this.rateUnit, this.durationUnit, this.filter, null);
        }
    }

    /* compiled from: Twttr */
    abstract class LoggerProxy {
        protected final b logger;

        abstract void log(Marker marker, String str, Object... objArr);

        public LoggerProxy(b bVar) {
            this.logger = bVar;
        }
    }

    /* compiled from: Twttr */
    class DebugLoggerProxy extends LoggerProxy {
        public DebugLoggerProxy(b bVar) {
            super(bVar);
        }

        public void log(Marker marker, String str, Object... objArr) {
            this.logger.b(marker, str, objArr);
        }
    }

    /* compiled from: Twttr */
    class ErrorLoggerProxy extends LoggerProxy {
        public ErrorLoggerProxy(b bVar) {
            super(bVar);
        }

        public void log(Marker marker, String str, Object... objArr) {
            this.logger.e(marker, str, objArr);
        }
    }

    /* compiled from: Twttr */
    class InfoLoggerProxy extends LoggerProxy {
        public InfoLoggerProxy(b bVar) {
            super(bVar);
        }

        public void log(Marker marker, String str, Object... objArr) {
            this.logger.c(marker, str, objArr);
        }
    }

    /* compiled from: Twttr */
    public enum LoggingLevel {
        TRACE,
        DEBUG,
        INFO,
        WARN,
        ERROR
    }

    /* compiled from: Twttr */
    class TraceLoggerProxy extends LoggerProxy {
        public TraceLoggerProxy(b bVar) {
            super(bVar);
        }

        public void log(Marker marker, String str, Object... objArr) {
            this.logger.a(marker, str, objArr);
        }
    }

    /* compiled from: Twttr */
    class WarnLoggerProxy extends LoggerProxy {
        public WarnLoggerProxy(b bVar) {
            super(bVar);
        }

        public void log(Marker marker, String str, Object... objArr) {
            this.logger.d(marker, str, objArr);
        }
    }

    public static Builder forRegistry(MetricRegistry metricRegistry) {
        return new Builder(null);
    }

    private Slf4jReporter(MetricRegistry metricRegistry, LoggerProxy loggerProxy, Marker marker, TimeUnit timeUnit, TimeUnit timeUnit2, MetricFilter metricFilter) {
        super(metricRegistry, "logger-reporter", metricFilter, timeUnit, timeUnit2);
        this.loggerProxy = loggerProxy;
        this.marker = marker;
    }

    public void report(SortedMap<String, Gauge> sortedMap, SortedMap<String, Counter> sortedMap2, SortedMap<String, Histogram> sortedMap3, SortedMap<String, Meter> sortedMap4, SortedMap<String, Timer> sortedMap5) {
        for (Entry entry : sortedMap.entrySet()) {
            logGauge((String) entry.getKey(), (Gauge) entry.getValue());
        }
        for (Entry entry2 : sortedMap2.entrySet()) {
            logCounter((String) entry2.getKey(), (Counter) entry2.getValue());
        }
        for (Entry entry22 : sortedMap3.entrySet()) {
            logHistogram((String) entry22.getKey(), (Histogram) entry22.getValue());
        }
        for (Entry entry222 : sortedMap4.entrySet()) {
            logMeter((String) entry222.getKey(), (Meter) entry222.getValue());
        }
        for (Entry entry2222 : sortedMap5.entrySet()) {
            logTimer((String) entry2222.getKey(), (Timer) entry2222.getValue());
        }
    }

    private void logTimer(String str, Timer timer) {
        Snapshot snapshot = timer.getSnapshot();
        this.loggerProxy.log(this.marker, "type=TIMER, name={}, count={}, min={}, max={}, mean={}, stddev={}, median={}, p75={}, p95={}, p98={}, p99={}, p999={}, mean_rate={}, m1={}, m5={}, m15={}, rate_unit={}, duration_unit={}", str, Long.valueOf(timer.getCount()), Double.valueOf(convertDuration((double) snapshot.getMin())), Double.valueOf(convertDuration((double) snapshot.getMax())), Double.valueOf(convertDuration(snapshot.getMean())), Double.valueOf(convertDuration(snapshot.getStdDev())), Double.valueOf(convertDuration(snapshot.getMedian())), Double.valueOf(convertDuration(snapshot.get75thPercentile())), Double.valueOf(convertDuration(snapshot.get95thPercentile())), Double.valueOf(convertDuration(snapshot.get98thPercentile())), Double.valueOf(convertDuration(snapshot.get99thPercentile())), Double.valueOf(convertDuration(snapshot.get999thPercentile())), Double.valueOf(convertRate(timer.getMeanRate())), Double.valueOf(convertRate(timer.getOneMinuteRate())), Double.valueOf(convertRate(timer.getFiveMinuteRate())), Double.valueOf(convertRate(timer.getFifteenMinuteRate())), getRateUnit(), getDurationUnit());
    }

    private void logMeter(String str, Meter meter) {
        this.loggerProxy.log(this.marker, "type=METER, name={}, count={}, mean_rate={}, m1={}, m5={}, m15={}, rate_unit={}", str, Long.valueOf(meter.getCount()), Double.valueOf(convertRate(meter.getMeanRate())), Double.valueOf(convertRate(meter.getOneMinuteRate())), Double.valueOf(convertRate(meter.getFiveMinuteRate())), Double.valueOf(convertRate(meter.getFifteenMinuteRate())), getRateUnit());
    }

    private void logHistogram(String str, Histogram histogram) {
        Snapshot snapshot = histogram.getSnapshot();
        this.loggerProxy.log(this.marker, "type=HISTOGRAM, name={}, count={}, min={}, max={}, mean={}, stddev={}, median={}, p75={}, p95={}, p98={}, p99={}, p999={}", str, Long.valueOf(histogram.getCount()), Long.valueOf(snapshot.getMin()), Long.valueOf(snapshot.getMax()), Double.valueOf(snapshot.getMean()), Double.valueOf(snapshot.getStdDev()), Double.valueOf(snapshot.getMedian()), Double.valueOf(snapshot.get75thPercentile()), Double.valueOf(snapshot.get95thPercentile()), Double.valueOf(snapshot.get98thPercentile()), Double.valueOf(snapshot.get99thPercentile()), Double.valueOf(snapshot.get999thPercentile()));
    }

    private void logCounter(String str, Counter counter) {
        this.loggerProxy.log(this.marker, "type=COUNTER, name={}, count={}", str, Long.valueOf(counter.getCount()));
    }

    private void logGauge(String str, Gauge gauge) {
        this.loggerProxy.log(this.marker, "type=GAUGE, name={}, value={}", str, gauge.getValue());
    }

    protected String getRateUnit() {
        return "events/" + super.getRateUnit();
    }
}
