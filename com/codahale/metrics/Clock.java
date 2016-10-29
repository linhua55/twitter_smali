package com.codahale.metrics;

import java.lang.management.ManagementFactory;
import java.lang.management.ThreadMXBean;

/* compiled from: Twttr */
public abstract class Clock {
    private static final Clock DEFAULT;

    /* compiled from: Twttr */
    public class CpuTimeClock extends Clock {
        private static final ThreadMXBean THREAD_MX_BEAN;

        static {
            THREAD_MX_BEAN = ManagementFactory.getThreadMXBean();
        }

        public long getTick() {
            return THREAD_MX_BEAN.getCurrentThreadCpuTime();
        }
    }

    /* compiled from: Twttr */
    public class UserTimeClock extends Clock {
        public long getTick() {
            return System.nanoTime();
        }
    }

    public abstract long getTick();

    public long getTime() {
        return System.currentTimeMillis();
    }

    static {
        DEFAULT = new UserTimeClock();
    }

    public static Clock defaultClock() {
        return DEFAULT;
    }
}
