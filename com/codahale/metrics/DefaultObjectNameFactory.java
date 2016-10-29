package com.codahale.metrics;

import javax.management.MalformedObjectNameException;
import javax.management.ObjectName;
import org.slf4j.b;
import org.slf4j.c;

/* compiled from: Twttr */
public class DefaultObjectNameFactory implements ObjectNameFactory {
    private static final b LOGGER;

    static {
        LOGGER = c.a(JmxReporter.class);
    }

    public ObjectName createName(String str, String str2, String str3) {
        try {
            ObjectName objectName = new ObjectName(str2, "name", str3);
            if (objectName.isPattern()) {
                return new ObjectName(str2, "name", ObjectName.quote(str3));
            }
            return objectName;
        } catch (MalformedObjectNameException e) {
            try {
                return new ObjectName(str2, "name", ObjectName.quote(str3));
            } catch (MalformedObjectNameException e2) {
                LOGGER.d("Unable to register {} {}", new Object[]{str, str3, e2});
                throw new RuntimeException(e2);
            }
        }
    }
}
