package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class LongBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract long convertToLong(T t);

    public abstract T getFromLong(long j);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromLong(jsonParser.p());
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToLong(t));
    }
}
