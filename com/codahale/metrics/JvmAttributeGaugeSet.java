package com.codahale.metrics;

import java.lang.management.ManagementFactory;
import java.lang.management.RuntimeMXBean;
import java.util.Collections;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* compiled from: Twttr */
public class JvmAttributeGaugeSet implements MetricSet {
    private final RuntimeMXBean runtime;

    public JvmAttributeGaugeSet() {
        this(ManagementFactory.getRuntimeMXBean());
    }

    public JvmAttributeGaugeSet(RuntimeMXBean runtimeMXBean) {
        this.runtime = runtimeMXBean;
    }

    public Map<String, Metric> getMetrics() {
        Map hashMap = new HashMap();
        hashMap.put("name", new Gauge<String>() {
            public String getValue() {
                return JvmAttributeGaugeSet.this.runtime.getName();
            }
        });
        hashMap.put("vendor", new Gauge<String>() {
            public String getValue() {
                return String.format(Locale.US, "%s %s %s (%s)", new Object[]{JvmAttributeGaugeSet.this.runtime.getVmVendor(), JvmAttributeGaugeSet.this.runtime.getVmName(), JvmAttributeGaugeSet.this.runtime.getVmVersion(), JvmAttributeGaugeSet.this.runtime.getSpecVersion()});
            }
        });
        hashMap.put("uptime", new Gauge<Long>() {
            public Long getValue() {
                return Long.valueOf(JvmAttributeGaugeSet.this.runtime.getUptime());
            }
        });
        return Collections.unmodifiableMap(hashMap);
    }
}
