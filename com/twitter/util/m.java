package com.twitter.util;

import com.twitter.platform.PlatformContext;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Formatter;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;

/* compiled from: Twttr */
public class m {
    public static final SimpleDateFormat a;
    public static final SimpleDateFormat b;
    protected static long c;

    static {
        a = new SynchronizedDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.ENGLISH);
        a.setTimeZone(TimeZone.getTimeZone("GMT"));
        b = new SynchronizedDateFormat("EEE MMM dd HH:mm:ss Z yyyy", Locale.ENGLISH);
    }

    public static String a() {
        return a(TimeZone.getDefault());
    }

    public static String a(TimeZone timeZone) {
        int offset = timeZone.getOffset(PlatformContext.f().a().a());
        long toHours = TimeUnit.MILLISECONDS.toHours((long) offset);
        String str = (toHours < 0 || TimeUnit.MILLISECONDS.toMinutes((long) offset) - TimeUnit.HOURS.toMinutes(toHours) < 0) ? "-" : "+";
        return String.format("%s%02d%02d", new Object[]{str, Long.valueOf(Math.abs(toHours)), Long.valueOf(Math.abs(r4))});
    }

    public static String a(long j) {
        Appendable stringBuilder = new StringBuilder();
        Formatter formatter = new Formatter(stringBuilder, Locale.getDefault());
        int i = (int) (j / 1000);
        int i2 = i % 60;
        int i3 = (i / 60) % 60;
        i /= 3600;
        stringBuilder.setLength(0);
        if (i > 0) {
            return formatter.format("%d:%02d:%02d", new Object[]{Integer.valueOf(i), Integer.valueOf(i3), Integer.valueOf(i2)}).toString();
        }
        return formatter.format("%d:%02d", new Object[]{Integer.valueOf(i3), Integer.valueOf(i2)}).toString();
    }

    public static boolean b(long j) {
        long b = b() - j;
        return b >= 0 && b < 604800000;
    }

    public static boolean c(long j) {
        long b = b() - j;
        return b >= 0 && b < 86400000;
    }

    public static long d(long j) {
        return (b() - j) / 3600000;
    }

    public static long b() {
        return c != 0 ? c : System.currentTimeMillis();
    }

    public static long c() {
        return TimeUnit.MILLISECONDS.toSeconds(b());
    }

    public static long a(SimpleDateFormat simpleDateFormat, String str) {
        long j = 0;
        if (str != null) {
            try {
                Date parse = simpleDateFormat.parse(str);
                if (parse != null) {
                    j = parse.getTime();
                }
            } catch (ParseException e) {
            }
        }
        return j;
    }

    public static String e(long j) {
        return String.format(Locale.ENGLISH, "%d:%02d:%02d.%03d", new Object[]{Long.valueOf(j / 3600000), Long.valueOf((j / 60000) % 60), Long.valueOf((j / 1000) % 60), Long.valueOf(j % 1000)});
    }
}
