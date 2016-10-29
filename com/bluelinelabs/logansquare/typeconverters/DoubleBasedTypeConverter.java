package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class DoubleBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract double convertToDouble(T t);

    public abstract T getFromDouble(double d);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromDouble(jsonParser.q());
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToDouble(t));
    }
}
