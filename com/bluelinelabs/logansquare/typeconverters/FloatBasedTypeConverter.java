package com.bluelinelabs.logansquare.typeconverters;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class FloatBasedTypeConverter<T> implements TypeConverter<T> {
    public abstract float convertToFloat(T t);

    public abstract T getFromFloat(float f);

    public T parse(JsonParser jsonParser) throws IOException {
        return getFromFloat((float) jsonParser.q());
    }

    public void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.a(str, convertToFloat(t));
    }
}
