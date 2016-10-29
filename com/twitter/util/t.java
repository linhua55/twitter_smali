package com.twitter.util;

import android.content.res.Resources;
import com.twitter.util.math.a;
import java.math.RoundingMode;
import java.text.NumberFormat;
import java.util.Locale;

/* compiled from: Twttr */
public class t {
    private static final v a;

    static {
        a = new v(null);
    }

    public static String a(Resources resources, long j) {
        return a(resources, j, resources.getBoolean(ad.abbreviate_number));
    }

    public static synchronized String a(Resources resources, long j, boolean z) {
        String str;
        int i = 0;
        synchronized (t.class) {
            NumberFormat a = a.a(Locale.getDefault());
            a.setRoundingMode(RoundingMode.DOWN);
            a.setMaximumFractionDigits(0);
            a.setGroupingUsed(true);
            if (z && j >= 10000) {
                int[] iArr = new int[]{resources.getInteger(ae.abbr_number_divider_billions), resources.getInteger(ae.abbr_number_divider_millions), resources.getInteger(ae.abbr_number_divider_thousands)};
                String[] strArr = new String[]{resources.getString(ah.abbr_number_unit_billions), resources.getString(ah.abbr_number_unit_millions), resources.getString(ah.abbr_number_unit_thousands)};
                while (i < iArr.length) {
                    int i2 = iArr[i];
                    String str2 = strArr[i];
                    double d = ((double) j) / ((double) i2);
                    if (d >= 1.0d) {
                        if (d < Math.pow(10.0d, (double) (3 - str2.length()))) {
                            a.setMaximumFractionDigits(1);
                        }
                        a.setGroupingUsed(false);
                        str = a.format(d) + str2;
                    } else {
                        i++;
                    }
                }
            }
            str = a.format(j);
        }
        return str;
    }

    public static String a(Resources resources, float f) {
        Locale locale = Locale.getDefault();
        String str = " ";
        float f2;
        if (locale.equals(Locale.US)) {
            float f3 = (float) (((double) f) * 3.28d);
            if (f3 > 528.0f) {
                f2 = f3 / 5280.0f;
                str = resources.getString(ah.mile_abbr);
            } else {
                f2 = a.a(f3, 10);
                str = resources.getString(ah.foot_abbr);
            }
            if (f2 >= 10.0f) {
                return a(resources, (long) ((int) f2)) + " " + str;
            }
            return String.format(locale, "%.1f", new Object[]{Float.valueOf(f2)}) + " " + str;
        }
        if (f >= 1000.0f) {
            f2 = f / 1000.0f;
            str = resources.getString(ah.kilometer);
        } else {
            f2 = a.a(f, 10);
            str = resources.getString(ah.meter);
        }
        if (f2 >= 1.0f) {
            return a(resources, (long) ((int) f2)) + " " + str;
        }
        return String.format(locale, "%.1f", new Object[]{Float.valueOf(f2)}) + " " + str;
    }

    public static String a(long j, long j2) {
        NumberFormat a = a.a(Locale.getDefault());
        if (j > j2) {
            return w.a(a.format(j2) + "+", ak.f());
        }
        return a.format(j);
    }
}
