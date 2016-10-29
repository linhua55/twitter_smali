package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

/* compiled from: Twttr */
public abstract class DateTypeConverter implements TypeConverter<Date> {
    private static final Object FORMATTER_LOCK;

    public abstract DateFormat getDateFormat();

    static {
        FORMATTER_LOCK = new Object();
    }

    public Date parse(JsonParser jsonParser) throws IOException {
        String a = jsonParser.a(null);
        try {
            Date parse;
            synchronized (FORMATTER_LOCK) {
                parse = getDateFormat().parse(a);
            }
            return parse;
        } catch (ParseException e) {
            return null;
        }
    }

    public void serialize(Date date, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        synchronized (FORMATTER_LOCK) {
            jsonGenerator.a(str, getDateFormat().format(date));
        }
    }
}
