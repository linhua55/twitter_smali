package defpackage;

import android.content.res.Resources;
import android.text.format.Time;
import java.text.NumberFormat;
import java.util.concurrent.TimeUnit;
import tv.periscope.android.library.n;
import tv.periscope.android.library.o;

/* compiled from: Twttr */
/* renamed from: dcg */
public final class dcg {
    public static long a(String str) {
        Time time = new Time();
        time.parse3339(str);
        return time.toMillis(false);
    }

    public static String a(Resources resources, long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Duration cannot be less than zero.");
        }
        int toDays = (int) TimeUnit.MILLISECONDS.toDays(j);
        long toMillis = j - TimeUnit.DAYS.toMillis((long) toDays);
        int toHours = (int) TimeUnit.MILLISECONDS.toHours(toMillis);
        toMillis -= TimeUnit.HOURS.toMillis((long) toHours);
        int toMinutes = (int) TimeUnit.MILLISECONDS.toMinutes(toMillis);
        int toSeconds = (int) TimeUnit.MILLISECONDS.toSeconds(toMillis - TimeUnit.MINUTES.toMillis((long) toMinutes));
        StringBuilder stringBuilder = new StringBuilder(64);
        if (toDays > 0) {
            stringBuilder.append(resources.getQuantityString(n.ps__time_format_days, toDays, new Object[]{Integer.valueOf(toDays)}));
            stringBuilder.append(" ");
        }
        if (toHours > 0) {
            stringBuilder.append(resources.getQuantityString(n.ps__time_format_hours, toHours, new Object[]{Integer.valueOf(toHours)}));
            stringBuilder.append(" ");
        }
        if (toMinutes > 0) {
            stringBuilder.append(resources.getQuantityString(n.ps__time_format_minutes, toMinutes, new Object[]{Integer.valueOf(toMinutes)}));
            stringBuilder.append(" ");
        }
        if (toSeconds > 0) {
            stringBuilder.append(resources.getQuantityString(n.ps__time_format_seconds, toSeconds, new Object[]{Integer.valueOf(toSeconds)}));
        }
        return stringBuilder.toString().trim();
    }

    public static String b(Resources resources, long j) {
        long currentTimeMillis = System.currentTimeMillis() - j;
        NumberFormat instance = NumberFormat.getInstance();
        if (currentTimeMillis <= 5000) {
            return resources.getString(o.ps__now);
        }
        if (currentTimeMillis < 60000) {
            return resources.getString(o.ps__seconds, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 1000))))});
        } else if (currentTimeMillis < 3600000) {
            return resources.getString(o.ps__minutes, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 60000))))});
        } else if (currentTimeMillis < 86400000) {
            return resources.getString(o.ps__hours, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 3600000))))});
        } else if (currentTimeMillis < 604800000) {
            return resources.getString(o.ps__days, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 86400000))))});
        } else if (currentTimeMillis < 2628000000L) {
            return resources.getString(o.ps__weeks, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 604800000))))});
        } else if (currentTimeMillis < 31536000000L) {
            return resources.getString(o.ps__months, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 2628000000L))))});
        } else {
            return resources.getString(o.ps__years, new Object[]{instance.format((long) ((int) Math.floor((double) (currentTimeMillis / 31536000000L))))});
        }
    }
}
