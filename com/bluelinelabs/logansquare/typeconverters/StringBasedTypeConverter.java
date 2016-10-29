package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class StringBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract String convertToString(T t);

    public abstract T getFromString(String str);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromString(jsonParser.a(null));
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToString(t));
    }
}
