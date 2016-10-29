package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class BooleanBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract boolean convertToBoolean(T t);

    public abstract T getFromBoolean(boolean z);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromBoolean(jsonParser.r());
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToBoolean(t));
    }
}
