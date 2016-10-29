package com.bluelinelabs.logansquare.typeconverters;

import java.text.DateFormat;

/* compiled from: Twttr */
public class DefaultDateConverter extends DateTypeConverter {
    private DateFormat mDateFormat;

    public DefaultDateConverter() {
        this.mDateFormat = new DefaultDateFormatter();
    }

    public DateFormat getDateFormat() {
        return this.mDateFormat;
    }
}
