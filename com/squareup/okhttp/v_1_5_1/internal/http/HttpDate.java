package com.squareup.okhttp.v_1_5_1.internal.http;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

/* compiled from: Twttr */
public final class HttpDate {
    private static final DateFormat[] BROWSER_COMPATIBLE_DATE_FORMATS;
    private static final String[] BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS;
    private static final ThreadLocal<DateFormat> STANDARD_DATE_FORMAT;

    static {
        STANDARD_DATE_FORMAT = new ThreadLocal<DateFormat>() {
            protected DateFormat initialValue() {
                DateFormat simpleDateFormat = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss zzz", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
                return simpleDateFormat;
            }
        };
        BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS = new String[]{"EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"};
        BROWSER_COMPATIBLE_DATE_FORMATS = new DateFormat[BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS.length];
    }

    public static Date parse(String str) {
        try {
            return ((DateFormat) STANDARD_DATE_FORMAT.get()).parse(str);
        } catch (ParseException e) {
            synchronized (BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS) {
            }
            int length = BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS.length;
            int i = 0;
            while (i < length) {
                DateFormat dateFormat = BROWSER_COMPATIBLE_DATE_FORMATS[i];
                if (dateFormat == null) {
                    dateFormat = new SimpleDateFormat(BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS[i], Locale.US);
                    BROWSER_COMPATIBLE_DATE_FORMATS[i] = dateFormat;
                }
                try {
                    return dateFormat.parse(str);
                } catch (ParseException e2) {
                    i++;
                }
            }
            return null;
        }
    }

    public static String format(Date date) {
        return ((DateFormat) STANDARD_DATE_FORMAT.get()).format(date);
    }

    private HttpDate() {
    }
}
