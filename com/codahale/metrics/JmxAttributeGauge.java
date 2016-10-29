package com.codahale.metrics;

import java.io.IOException;
import java.lang.management.ManagementFactory;
import javax.management.JMException;
import javax.management.MBeanServerConnection;
import javax.management.ObjectName;

/* compiled from: Twttr */
public class JmxAttributeGauge implements Gauge<Object> {
    private final String attributeName;
    private final MBeanServerConnection mBeanServerConn;
    private final ObjectName objectName;

    public JmxAttributeGauge(ObjectName objectName, String str) {
        this(ManagementFactory.getPlatformMBeanServer(), objectName, str);
    }

    public JmxAttributeGauge(MBeanServerConnection mBeanServerConnection, ObjectName objectName, String str) {
        this.mBeanServerConn = mBeanServerConnection;
        this.objectName = objectName;
        this.attributeName = str;
    }

    public Object getValue() {
        Object obj = null;
        try {
            obj = this.mBeanServerConn.getAttribute(this.objectName, this.attributeName);
        } catch (IOException e) {
        } catch (JMException e2) {
        }
        return obj;
    }
}
