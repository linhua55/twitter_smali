package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Calendar;

/* compiled from: Twttr */
public abstract class CalendarTypeConverter implements TypeConverter<Calendar> {
    private static final Object FORMATTER_LOCK;

    public abstract DateFormat getDateFormat();

    static {
        FORMATTER_LOCK = new Object();
    }

    public Calendar parse(JsonParser jsonParser) throws IOException {
        String a = jsonParser.a(null);
        try {
            Calendar instance;
            synchronized (FORMATTER_LOCK) {
                instance = Calendar.getInstance();
                instance.setTime(getDateFormat().parse(a));
            }
            return instance;
        } catch (ParseException e) {
            return null;
        }
    }

    public void serialize(Calendar calendar, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        synchronized (FORMATTER_LOCK) {
            jsonGenerator.a(str, getDateFormat().format(Long.valueOf(calendar.getTimeInMillis())));
        }
    }
}
