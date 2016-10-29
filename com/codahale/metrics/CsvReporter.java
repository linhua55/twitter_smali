package com.codahale.metrics;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.SortedMap;
import java.util.concurrent.TimeUnit;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
public class CsvReporter extends ScheduledReporter {
    private static final b LOGGER;
    private static final Charset UTF_8;
    private final Clock clock;
    private final File directory;
    private final Locale locale;

    /* compiled from: Twttr */
    public class Builder {
        private Clock clock;
        private TimeUnit durationUnit;
        private MetricFilter filter;
        private Locale locale;
        private TimeUnit rateUnit;
        private final MetricRegistry registry;

        private Builder(MetricRegistry metricRegistry) {
            this.registry = metricRegistry;
            this.locale = Locale.getDefault();
            this.rateUnit = TimeUnit.SECONDS;
            this.durationUnit = TimeUnit.MILLISECONDS;
            this.clock = Clock.defaultClock();
            this.filter = MetricFilter.ALL;
        }

        public Builder formatFor(Locale locale) {
            this.locale = locale;
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

        public Builder withClock(Clock clock) {
            this.clock = clock;
            return this;
        }

        public Builder filter(MetricFilter metricFilter) {
            this.filter = metricFilter;
            return this;
        }

        public CsvReporter build(File file) {
            return new CsvReporter(file, this.locale, this.rateUnit, this.durationUnit, this.clock, this.filter, null);
        }
    }

    public static Builder forRegistry(MetricRegistry metricRegistry) {
        return new Builder(null);
    }

    static {
        LOGGER = c.a(CsvReporter.class);
        UTF_8 = Charset.forName(Util.UTF_8);
    }

    private CsvReporter(MetricRegistry metricRegistry, File file, Locale locale, TimeUnit timeUnit, TimeUnit timeUnit2, Clock clock, MetricFilter metricFilter) {
        super(metricRegistry, "csv-reporter", metricFilter, timeUnit, timeUnit2);
        this.directory = file;
        this.locale = locale;
        this.clock = clock;
    }

    public void report(SortedMap<String, Gauge> sortedMap, SortedMap<String, Counter> sortedMap2, SortedMap<String, Histogram> sortedMap3, SortedMap<String, Meter> sortedMap4, SortedMap<String, Timer> sortedMap5) {
        long toSeconds = TimeUnit.MILLISECONDS.toSeconds(this.clock.getTime());
        for (Entry entry : sortedMap.entrySet()) {
            reportGauge(toSeconds, (String) entry.getKey(), (Gauge) entry.getValue());
        }
        for (Entry entry2 : sortedMap2.entrySet()) {
            reportCounter(toSeconds, (String) entry2.getKey(), (Counter) entry2.getValue());
        }
        for (Entry entry22 : sortedMap3.entrySet()) {
            reportHistogram(toSeconds, (String) entry22.getKey(), (Histogram) entry22.getValue());
        }
        for (Entry entry222 : sortedMap4.entrySet()) {
            reportMeter(toSeconds, (String) entry222.getKey(), (Meter) entry222.getValue());
        }
        for (Entry entry2222 : sortedMap5.entrySet()) {
            reportTimer(toSeconds, (String) entry2222.getKey(), (Timer) entry2222.getValue());
        }
    }

    private void reportTimer(long j, String str, Timer timer) {
        Snapshot snapshot = timer.getSnapshot();
        long j2 = j;
        String str2 = str;
        report(j2, str2, "count,max,mean,min,stddev,p50,p75,p95,p98,p99,p999,mean_rate,m1_rate,m5_rate,m15_rate,rate_unit,duration_unit", "%d,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,%f,calls/%s,%s", Long.valueOf(timer.getCount()), Double.valueOf(convertDuration((double) snapshot.getMax())), Double.valueOf(convertDuration(snapshot.getMean())), Double.valueOf(convertDuration((double) snapshot.getMin())), Double.valueOf(convertDuration(snapshot.getStdDev())), Double.valueOf(convertDuration(snapshot.getMedian())), Double.valueOf(convertDuration(snapshot.get75thPercentile())), Double.valueOf(convertDuration(snapshot.get95thPercentile())), Double.valueOf(convertDuration(snapshot.get98thPercentile())), Double.valueOf(convertDuration(snapshot.get99thPercentile())), Double.valueOf(convertDuration(snapshot.get999thPercentile())), Double.valueOf(convertRate(timer.getMeanRate())), Double.valueOf(convertRate(timer.getOneMinuteRate())), Double.valueOf(convertRate(timer.getFiveMinuteRate())), Double.valueOf(convertRate(timer.getFifteenMinuteRate())), getRateUnit(), getDurationUnit());
    }

    private void reportMeter(long j, String str, Meter meter) {
        long j2 = j;
        String str2 = str;
        report(j2, str2, "count,mean_rate,m1_rate,m5_rate,m15_rate,rate_unit", "%d,%f,%f,%f,%f,events/%s", Long.valueOf(meter.getCount()), Double.valueOf(convertRate(meter.getMeanRate())), Double.valueOf(convertRate(meter.getOneMinuteRate())), Double.valueOf(convertRate(meter.getFiveMinuteRate())), Double.valueOf(convertRate(meter.getFifteenMinuteRate())), getRateUnit());
    }

    private void reportHistogram(long j, String str, Histogram histogram) {
        Snapshot snapshot = histogram.getSnapshot();
        long j2 = j;
        String str2 = str;
        report(j2, str2, "count,max,mean,min,stddev,p50,p75,p95,p98,p99,p999", "%d,%d,%f,%d,%f,%f,%f,%f,%f,%f,%f", Long.valueOf(histogram.getCount()), Long.valueOf(snapshot.getMax()), Double.valueOf(snapshot.getMean()), Long.valueOf(snapshot.getMin()), Double.valueOf(snapshot.getStdDev()), Double.valueOf(snapshot.getMedian()), Double.valueOf(snapshot.get75thPercentile()), Double.valueOf(snapshot.get95thPercentile()), Double.valueOf(snapshot.get98thPercentile()), Double.valueOf(snapshot.get99thPercentile()), Double.valueOf(snapshot.get999thPercentile()));
    }

    private void reportCounter(long j, String str, Counter counter) {
        long j2 = j;
        String str2 = str;
        report(j2, str2, "count", "%d", Long.valueOf(counter.getCount()));
    }

    private void reportGauge(long j, String str, Gauge gauge) {
        long j2 = j;
        String str2 = str;
        report(j2, str2, "value", "%s", gauge.getValue());
    }

    private void report(long j, String str, String str2, String str3, Object... objArr) {
        PrintWriter printWriter;
        try {
            File file = new File(this.directory, sanitize(str) + ".csv");
            boolean exists = file.exists();
            if (exists || file.createNewFile()) {
                printWriter = new PrintWriter(new OutputStreamWriter(new FileOutputStream(file, true), UTF_8));
                if (!exists) {
                    printWriter.println("t," + str2);
                }
                printWriter.printf(this.locale, String.format(this.locale, "%d,%s%n", new Object[]{Long.valueOf(j), str3}), objArr);
                printWriter.close();
            }
        } catch (IOException e) {
            LOGGER.a("Error writing to {}", str, e);
        } catch (Throwable th) {
            printWriter.close();
        }
    }

    protected String sanitize(String str) {
        return str;
    }
}
