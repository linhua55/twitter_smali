package com.bluelinelabs.logansquare.typeconverters;

import java.text.DateFormat;

/* compiled from: Twttr */
public class DefaultCalendarConverter extends CalendarTypeConverter {
    private DateFormat mDateFormat;

    public DefaultCalendarConverter() {
        this.mDateFormat = new DefaultDateFormatter();
    }

    public DateFormat getDateFormat() {
        return this.mDateFormat;
    }
}
