package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class IntBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract int convertToInt(T t);

    public abstract T getFromInt(int i);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromInt(jsonParser.o());
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToInt(t));
    }
}
