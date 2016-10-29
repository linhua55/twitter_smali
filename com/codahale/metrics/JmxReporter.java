package com.codahale.metrics;

import java.io.Closeable;
import java.lang.management.ManagementFactory;
import java.util.Collections;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import javax.management.InstanceAlreadyExistsException;
import javax.management.InstanceNotFoundException;
import javax.management.JMException;
import javax.management.MBeanRegistrationException;
import javax.management.MBeanServer;
import javax.management.ObjectInstance;
import javax.management.ObjectName;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
public class JmxReporter implements Reporter, Closeable {
    private static final b LOGGER;
    private final JmxListener listener;
    private final MetricRegistry registry;

    /* compiled from: Twttr */
    public interface MetricMBean {
        ObjectName objectName();
    }

    /* compiled from: Twttr */
    abstract class AbstractBean implements MetricMBean {
        private final ObjectName objectName;

        AbstractBean(ObjectName objectName) {
            this.objectName = objectName;
        }

        public ObjectName objectName() {
            return this.objectName;
        }
    }

    /* compiled from: Twttr */
    public class Builder {
        private String domain;
        private TimeUnit durationUnit;
        private MetricFilter filter;
        private MBeanServer mBeanServer;
        private ObjectNameFactory objectNameFactory;
        private TimeUnit rateUnit;
        private final MetricRegistry registry;
        private Map<String, TimeUnit> specificDurationUnits;
        private Map<String, TimeUnit> specificRateUnits;

        private Builder(MetricRegistry metricRegistry) {
            this.filter = MetricFilter.ALL;
            this.registry = metricRegistry;
            this.rateUnit = TimeUnit.SECONDS;
            this.durationUnit = TimeUnit.MILLISECONDS;
            this.domain = "metrics";
            this.objectNameFactory = new DefaultObjectNameFactory();
            this.specificDurationUnits = Collections.emptyMap();
            this.specificRateUnits = Collections.emptyMap();
        }

        public Builder registerWith(MBeanServer mBeanServer) {
            this.mBeanServer = mBeanServer;
            return this;
        }

        public Builder convertRatesTo(TimeUnit timeUnit) {
            this.rateUnit = timeUnit;
            return this;
        }

        public Builder createsObjectNamesWith(ObjectNameFactory objectNameFactory) {
            if (objectNameFactory == null) {
                throw new IllegalArgumentException("null objectNameFactory");
            }
            this.objectNameFactory = objectNameFactory;
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

        public Builder inDomain(String str) {
            this.domain = str;
            return this;
        }

        public Builder specificDurationUnits(Map<String, TimeUnit> map) {
            this.specificDurationUnits = Collections.unmodifiableMap(map);
            return this;
        }

        public Builder specificRateUnits(Map<String, TimeUnit> map) {
            this.specificRateUnits = Collections.unmodifiableMap(map);
            return this;
        }

        public JmxReporter build() {
            MetricTimeUnits metricTimeUnits = new MetricTimeUnits(this.rateUnit, this.durationUnit, this.specificRateUnits, this.specificDurationUnits);
            if (this.mBeanServer == null) {
                this.mBeanServer = ManagementFactory.getPlatformMBeanServer();
            }
            return new JmxReporter(this.domain, this.registry, this.filter, metricTimeUnits, this.objectNameFactory, null);
        }
    }

    /* compiled from: Twttr */
    public interface JmxCounterMBean extends MetricMBean {
        long getCount();
    }

    /* compiled from: Twttr */
    class JmxCounter extends AbstractBean implements JmxCounterMBean {
        private final Counter metric;

        private JmxCounter(Counter counter, ObjectName objectName) {
            super(objectName);
            this.metric = counter;
        }

        public long getCount() {
            return this.metric.getCount();
        }
    }

    /* compiled from: Twttr */
    public interface JmxGaugeMBean extends MetricMBean {
        Object getValue();
    }

    /* compiled from: Twttr */
    class JmxGauge extends AbstractBean implements JmxGaugeMBean {
        private final Gauge<?> metric;

        private JmxGauge(Gauge<?> gauge, ObjectName objectName) {
            super(objectName);
            this.metric = gauge;
        }

        public Object getValue() {
            return this.metric.getValue();
        }
    }

    /* compiled from: Twttr */
    public interface JmxHistogramMBean extends MetricMBean {
        double get50thPercentile();

        double get75thPercentile();

        double get95thPercentile();

        double get98thPercentile();

        double get999thPercentile();

        double get99thPercentile();

        long getCount();

        long getMax();

        double getMean();

        long getMin();

        double getStdDev();

        long[] values();
    }

    /* compiled from: Twttr */
    class JmxHistogram implements JmxHistogramMBean {
        private final Histogram metric;
        private final ObjectName objectName;

        private JmxHistogram(Histogram histogram, ObjectName objectName) {
            this.metric = histogram;
            this.objectName = objectName;
        }

        public ObjectName objectName() {
            return this.objectName;
        }

        public double get50thPercentile() {
            return this.metric.getSnapshot().getMedian();
        }

        public long getCount() {
            return this.metric.getCount();
        }

        public long getMin() {
            return this.metric.getSnapshot().getMin();
        }

        public long getMax() {
            return this.metric.getSnapshot().getMax();
        }

        public double getMean() {
            return this.metric.getSnapshot().getMean();
        }

        public double getStdDev() {
            return this.metric.getSnapshot().getStdDev();
        }

        public double get75thPercentile() {
            return this.metric.getSnapshot().get75thPercentile();
        }

        public double get95thPercentile() {
            return this.metric.getSnapshot().get95thPercentile();
        }

        public double get98thPercentile() {
            return this.metric.getSnapshot().get98thPercentile();
        }

        public double get99thPercentile() {
            return this.metric.getSnapshot().get99thPercentile();
        }

        public double get999thPercentile() {
            return this.metric.getSnapshot().get999thPercentile();
        }

        public long[] values() {
            return this.metric.getSnapshot().getValues();
        }
    }

    /* compiled from: Twttr */
    class JmxListener implements MetricRegistryListener {
        private final MetricFilter filter;
        private final MBeanServer mBeanServer;
        private final String name;
        private final ObjectNameFactory objectNameFactory;
        private final Map<ObjectName, ObjectName> registered;
        private final MetricTimeUnits timeUnits;

        private JmxListener(MBeanServer mBeanServer, String str, MetricFilter metricFilter, MetricTimeUnits metricTimeUnits, ObjectNameFactory objectNameFactory) {
            this.mBeanServer = mBeanServer;
            this.name = str;
            this.filter = metricFilter;
            this.timeUnits = metricTimeUnits;
            this.registered = new ConcurrentHashMap();
            this.objectNameFactory = objectNameFactory;
        }

        private void registerMBean(Object obj, ObjectName objectName) throws InstanceAlreadyExistsException, JMException {
            ObjectInstance registerMBean = this.mBeanServer.registerMBean(obj, objectName);
            if (registerMBean != null) {
                this.registered.put(objectName, registerMBean.getObjectName());
            } else {
                this.registered.put(objectName, objectName);
            }
        }

        private void unregisterMBean(ObjectName objectName) throws InstanceNotFoundException, MBeanRegistrationException {
            ObjectName objectName2 = (ObjectName) this.registered.remove(objectName);
            if (objectName2 != null) {
                this.mBeanServer.unregisterMBean(objectName2);
            } else {
                this.mBeanServer.unregisterMBean(objectName);
            }
        }

        public void onGaugeAdded(String str, Gauge<?> gauge) {
            try {
                if (this.filter.matches(str, gauge)) {
                    ObjectName createName = createName("gauges", str);
                    registerMBean(new JmxGauge(createName, null), createName);
                }
            } catch (InstanceAlreadyExistsException e) {
                JmxReporter.LOGGER.a("Unable to register gauge", e);
            } catch (JMException e2) {
                JmxReporter.LOGGER.b("Unable to register gauge", e2);
            }
        }

        public void onGaugeRemoved(String str) {
            try {
                unregisterMBean(createName("gauges", str));
            } catch (InstanceNotFoundException e) {
                JmxReporter.LOGGER.a("Unable to unregister gauge", e);
            } catch (MBeanRegistrationException e2) {
                JmxReporter.LOGGER.b("Unable to unregister gauge", e2);
            }
        }

        public void onCounterAdded(String str, Counter counter) {
            try {
                if (this.filter.matches(str, counter)) {
                    ObjectName createName = createName("counters", str);
                    registerMBean(new JmxCounter(createName, null), createName);
                }
            } catch (InstanceAlreadyExistsException e) {
                JmxReporter.LOGGER.a("Unable to register counter", e);
            } catch (JMException e2) {
                JmxReporter.LOGGER.b("Unable to register counter", e2);
            }
        }

        public void onCounterRemoved(String str) {
            try {
                unregisterMBean(createName("counters", str));
            } catch (InstanceNotFoundException e) {
                JmxReporter.LOGGER.a("Unable to unregister counter", e);
            } catch (MBeanRegistrationException e2) {
                JmxReporter.LOGGER.b("Unable to unregister counter", e2);
            }
        }

        public void onHistogramAdded(String str, Histogram histogram) {
            try {
                if (this.filter.matches(str, histogram)) {
                    ObjectName createName = createName("histograms", str);
                    registerMBean(new JmxHistogram(createName, null), createName);
                }
            } catch (InstanceAlreadyExistsException e) {
                JmxReporter.LOGGER.a("Unable to register histogram", e);
            } catch (JMException e2) {
                JmxReporter.LOGGER.b("Unable to register histogram", e2);
            }
        }

        public void onHistogramRemoved(String str) {
            try {
                unregisterMBean(createName("histograms", str));
            } catch (InstanceNotFoundException e) {
                JmxReporter.LOGGER.a("Unable to unregister histogram", e);
            } catch (MBeanRegistrationException e2) {
                JmxReporter.LOGGER.b("Unable to unregister histogram", e2);
            }
        }

        public void onMeterAdded(String str, Meter meter) {
            try {
                if (this.filter.matches(str, meter)) {
                    ObjectName createName = createName("meters", str);
                    registerMBean(new JmxMeter(createName, this.timeUnits.rateFor(str), null), createName);
                }
            } catch (InstanceAlreadyExistsException e) {
                JmxReporter.LOGGER.a("Unable to register meter", e);
            } catch (JMException e2) {
                JmxReporter.LOGGER.b("Unable to register meter", e2);
            }
        }

        public void onMeterRemoved(String str) {
            try {
                unregisterMBean(createName("meters", str));
            } catch (InstanceNotFoundException e) {
                JmxReporter.LOGGER.a("Unable to unregister meter", e);
            } catch (MBeanRegistrationException e2) {
                JmxReporter.LOGGER.b("Unable to unregister meter", e2);
            }
        }

        public void onTimerAdded(String str, Timer timer) {
            try {
                if (this.filter.matches(str, timer)) {
                    ObjectName createName = createName("timers", str);
                    registerMBean(new JmxTimer(createName, this.timeUnits.rateFor(str), this.timeUnits.durationFor(str), null), createName);
                }
            } catch (InstanceAlreadyExistsException e) {
                JmxReporter.LOGGER.a("Unable to register timer", e);
            } catch (JMException e2) {
                JmxReporter.LOGGER.b("Unable to register timer", e2);
            }
        }

        public void onTimerRemoved(String str) {
            try {
                unregisterMBean(createName("timers", str));
            } catch (InstanceNotFoundException e) {
                JmxReporter.LOGGER.a("Unable to unregister timer", e);
            } catch (MBeanRegistrationException e2) {
                JmxReporter.LOGGER.b("Unable to unregister timer", e2);
            }
        }

        private ObjectName createName(String str, String str2) {
            return this.objectNameFactory.createName(str, this.name, str2);
        }

        void unregisterAll() {
            for (ObjectName unregisterMBean : this.registered.keySet()) {
                try {
                    unregisterMBean(unregisterMBean);
                } catch (InstanceNotFoundException e) {
                    JmxReporter.LOGGER.a("Unable to unregister metric", e);
                } catch (MBeanRegistrationException e2) {
                    JmxReporter.LOGGER.b("Unable to unregister metric", e2);
                }
            }
            this.registered.clear();
        }
    }

    /* compiled from: Twttr */
    public interface JmxMeterMBean extends MetricMBean {
        long getCount();

        double getFifteenMinuteRate();

        double getFiveMinuteRate();

        double getMeanRate();

        double getOneMinuteRate();

        String getRateUnit();
    }

    /* compiled from: Twttr */
    class JmxMeter extends AbstractBean implements JmxMeterMBean {
        private final Metered metric;
        private final double rateFactor;
        private final String rateUnit;

        private JmxMeter(Metered metered, ObjectName objectName, TimeUnit timeUnit) {
            super(objectName);
            this.metric = metered;
            this.rateFactor = (double) timeUnit.toSeconds(1);
            this.rateUnit = "events/" + calculateRateUnit(timeUnit);
        }

        public long getCount() {
            return this.metric.getCount();
        }

        public double getMeanRate() {
            return this.metric.getMeanRate() * this.rateFactor;
        }

        public double getOneMinuteRate() {
            return this.metric.getOneMinuteRate() * this.rateFactor;
        }

        public double getFiveMinuteRate() {
            return this.metric.getFiveMinuteRate() * this.rateFactor;
        }

        public double getFifteenMinuteRate() {
            return this.metric.getFifteenMinuteRate() * this.rateFactor;
        }

        public String getRateUnit() {
            return this.rateUnit;
        }

        private String calculateRateUnit(TimeUnit timeUnit) {
            String toLowerCase = timeUnit.toString().toLowerCase(Locale.US);
            return toLowerCase.substring(0, toLowerCase.length() - 1);
        }
    }

    /* compiled from: Twttr */
    public interface JmxTimerMBean extends JmxMeterMBean {
        double get50thPercentile();

        double get75thPercentile();

        double get95thPercentile();

        double get98thPercentile();

        double get999thPercentile();

        double get99thPercentile();

        String getDurationUnit();

        double getMax();

        double getMean();

        double getMin();

        double getStdDev();

        long[] values();
    }

    /* compiled from: Twttr */
    class JmxTimer extends JmxMeter implements JmxTimerMBean {
        private final double durationFactor;
        private final String durationUnit;
        private final Timer metric;

        private JmxTimer(Timer timer, ObjectName objectName, TimeUnit timeUnit, TimeUnit timeUnit2) {
            super(objectName, timeUnit, null);
            this.metric = timer;
            this.durationFactor = 1.0d / ((double) timeUnit2.toNanos(1));
            this.durationUnit = timeUnit2.toString().toLowerCase(Locale.US);
        }

        public double get50thPercentile() {
            return this.metric.getSnapshot().getMedian() * this.durationFactor;
        }

        public double getMin() {
            return ((double) this.metric.getSnapshot().getMin()) * this.durationFactor;
        }

        public double getMax() {
            return ((double) this.metric.getSnapshot().getMax()) * this.durationFactor;
        }

        public double getMean() {
            return this.metric.getSnapshot().getMean() * this.durationFactor;
        }

        public double getStdDev() {
            return this.metric.getSnapshot().getStdDev() * this.durationFactor;
        }

        public double get75thPercentile() {
            return this.metric.getSnapshot().get75thPercentile() * this.durationFactor;
        }

        public double get95thPercentile() {
            return this.metric.getSnapshot().get95thPercentile() * this.durationFactor;
        }

        public double get98thPercentile() {
            return this.metric.getSnapshot().get98thPercentile() * this.durationFactor;
        }

        public double get99thPercentile() {
            return this.metric.getSnapshot().get99thPercentile() * this.durationFactor;
        }

        public double get999thPercentile() {
            return this.metric.getSnapshot().get999thPercentile() * this.durationFactor;
        }

        public long[] values() {
            return this.metric.getSnapshot().getValues();
        }

        public String getDurationUnit() {
            return this.durationUnit;
        }
    }

    /* compiled from: Twttr */
    class MetricTimeUnits {
        private final TimeUnit defaultDuration;
        private final TimeUnit defaultRate;
        private final Map<String, TimeUnit> durationOverrides;
        private final Map<String, TimeUnit> rateOverrides;

        MetricTimeUnits(TimeUnit timeUnit, TimeUnit timeUnit2, Map<String, TimeUnit> map, Map<String, TimeUnit> map2) {
            this.defaultRate = timeUnit;
            this.defaultDuration = timeUnit2;
            this.rateOverrides = map;
            this.durationOverrides = map2;
        }

        public TimeUnit durationFor(String str) {
            return this.durationOverrides.containsKey(str) ? (TimeUnit) this.durationOverrides.get(str) : this.defaultDuration;
        }

        public TimeUnit rateFor(String str) {
            return this.rateOverrides.containsKey(str) ? (TimeUnit) this.rateOverrides.get(str) : this.defaultRate;
        }
    }

    public static Builder forRegistry(MetricRegistry metricRegistry) {
        return new Builder(null);
    }

    static {
        LOGGER = c.a(JmxReporter.class);
    }

    private JmxReporter(MBeanServer mBeanServer, String str, MetricRegistry metricRegistry, MetricFilter metricFilter, MetricTimeUnits metricTimeUnits, ObjectNameFactory objectNameFactory) {
        this.registry = metricRegistry;
        this.listener = new JmxListener(str, metricFilter, metricTimeUnits, objectNameFactory, null);
    }

    public void start() {
        this.registry.addListener(this.listener);
    }

    public void stop() {
        this.registry.removeListener(this.listener);
        this.listener.unregisterAll();
    }

    public void close() {
        stop();
    }

    ObjectNameFactory getObjectNameFactory() {
        return this.listener.objectNameFactory;
    }
}
