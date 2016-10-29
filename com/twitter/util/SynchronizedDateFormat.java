package com.twitter.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* compiled from: Twttr */
public class SynchronizedDateFormat extends SimpleDateFormat {
    private static final long serialVersionUID = 6612933786679648650L;

    public SynchronizedDateFormat(String str) {
        super(str);
    }

    public SynchronizedDateFormat(String str, Locale locale) {
        super(str, locale);
    }

    public synchronized Date parse(String str) throws ParseException {
        try {
        } catch (NullPointerException e) {
            throw new ParseException("Parsing throw a null pointer exception.", 0);
        }
        return super.parse(str);
    }

    public synchronized void applyPattern(String str) {
        super.applyPattern(str);
    }
}
