package org.apache.commons.net.ntp;

import java.io.Serializable;
import java.text.DateFormat;

/* compiled from: Twttr */
public class TimeStamp implements Serializable, Comparable<TimeStamp> {
    private static final long serialVersionUID = 8139806907588338737L;
    private final long ntpTime;
    private DateFormat simpleFormatter;
    private DateFormat utcFormatter;

    public /* synthetic */ int compareTo(Object obj) {
        return a((TimeStamp) obj);
    }

    public TimeStamp(long j) {
        this.ntpTime = j;
    }

    public long a() {
        return this.ntpTime;
    }

    public long b() {
        return (this.ntpTime >>> 32) & 4294967295L;
    }

    public long c() {
        return this.ntpTime & 4294967295L;
    }

    public static long a(long j) {
        long j2 = (j >>> 32) & 4294967295L;
        long round = Math.round((((double) (4294967295L & j)) * 1000.0d) / 4.294967296E9d);
        if ((2147483648L & j2) == 0) {
            return ((j2 * 1000) + 2085978496000L) + round;
        }
        return ((j2 * 1000) - 2208988800000L) + round;
    }

    public static TimeStamp b(long j) {
        return new TimeStamp(c(j));
    }

    protected static long c(long j) {
        long j2;
        Object obj = j < 2085978496000L ? 1 : null;
        if (obj != null) {
            j2 = j - -2208988800000L;
        } else {
            j2 = j - 2085978496000L;
        }
        long j3 = j2 / 1000;
        long j4 = ((j2 % 1000) * 4294967296L) / 1000;
        if (obj != null) {
            j2 = 2147483648L | j3;
        } else {
            j2 = j3;
        }
        return (j2 << 32) | j4;
    }

    public int hashCode() {
        return (int) (this.ntpTime ^ (this.ntpTime >>> 32));
    }

    public boolean equals(Object obj) {
        if ((obj instanceof TimeStamp) && this.ntpTime == ((TimeStamp) obj).a()) {
            return true;
        }
        return false;
    }

    public String toString() {
        return d(this.ntpTime);
    }

    private static void a(StringBuilder stringBuilder, long j) {
        String toHexString = Long.toHexString(j);
        for (int length = toHexString.length(); length < 8; length++) {
            stringBuilder.append('0');
        }
        stringBuilder.append(toHexString);
    }

    public static String d(long j) {
        StringBuilder stringBuilder = new StringBuilder();
        a(stringBuilder, (j >>> 32) & 4294967295L);
        stringBuilder.append('.');
        a(stringBuilder, j & 4294967295L);
        return stringBuilder.toString();
    }

    public int a(TimeStamp timeStamp) {
        long j = this.ntpTime;
        long j2 = timeStamp.ntpTime;
        if (j < j2) {
            return -1;
        }
        return j == j2 ? 0 : 1;
    }
}
