package com.twitter.util;

import android.content.res.Resources;
import android.os.SystemClock;
import java.util.Calendar;
import java.util.Date;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class al extends m {
    private static long d;
    private static final an e;

    static {
        e = new an(null);
    }

    public static String a(Resources resources, long j) {
        long b = m.b() - j;
        if (b >= 0) {
            int i;
            if (b < 60000) {
                i = (int) (b / 1000);
                return resources.getQuantityString(ag.time_secs, i, new Object[]{Integer.valueOf(i)});
            } else if (b < 3600000) {
                i = (int) (b / 60000);
                return resources.getQuantityString(ag.time_mins, i, new Object[]{Integer.valueOf(i)});
            } else if (b < 86400000) {
                i = (int) (b / 3600000);
                return resources.getQuantityString(ag.time_hours, i, new Object[]{Integer.valueOf(i)});
            } else if (b < 604800000) {
                i = (int) (b / 86400000);
                return resources.getQuantityString(ag.time_days, i, new Object[]{Integer.valueOf(i)});
            } else {
                Calendar instance = Calendar.getInstance();
                Calendar instance2 = Calendar.getInstance();
                Date date = new Date(j);
                instance2.setTime(date);
                if (instance.get(1) == instance2.get(1)) {
                    return e.b(resources, date);
                }
                return e.a(resources, date);
            }
        } else if (b >= -60000) {
            return resources.getString(ah.now);
        } else {
            return e.a(resources, new Date(j));
        }
    }

    public static String b(Resources resources, long j) {
        long b = m.b() - j;
        if (b < 0) {
            return null;
        }
        if (b < 60000) {
            return resources.getString(ah.recent_tweets_header_title);
        }
        int i;
        if (b < 3600000) {
            i = (int) (b / 60000);
            return resources.getQuantityString(ag.time_mins_ago, i, new Object[]{Integer.valueOf(i)});
        } else if (b < 86400000) {
            i = (int) (b / 3600000);
            return resources.getQuantityString(ag.time_hours_ago, i, new Object[]{Integer.valueOf(i)});
        } else {
            i = (int) (b / 86400000);
            return resources.getQuantityString(ag.time_days_ago, i, new Object[]{Integer.valueOf(i)});
        }
    }

    public static String c(Resources resources, long j) {
        long b = m.b() - j;
        if (b < 86400000) {
            return null;
        }
        int i;
        if (b < 604800000) {
            i = (int) (b / 86400000);
            return resources.getQuantityString(ag.days, i, new Object[]{Integer.valueOf(i)});
        } else if (b < 2628000000L) {
            i = (int) (b / 604800000);
            return resources.getQuantityString(ag.weeks, i, new Object[]{Integer.valueOf(i)});
        } else if (b < 31536000000L) {
            i = (int) (b / 2628000000L);
            return resources.getQuantityString(ag.months, i, new Object[]{Integer.valueOf(i)});
        } else {
            i = (int) (b / 31536000000L);
            return resources.getQuantityString(ag.years, i, new Object[]{Integer.valueOf(i)});
        }
    }

    public static long d() {
        return d != 0 ? d : SystemClock.elapsedRealtime();
    }

    public static long a(long j, TimeUnit timeUnit) {
        return (m.b() - d()) + timeUnit.toMillis(j);
    }
}
