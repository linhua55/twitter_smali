package com.twitter.model.json.common;

import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.fasterxml.jackson.core.JsonGenerator;

/* compiled from: Twttr */
public abstract class m<T> implements TypeConverter<T> {
    public final void serialize(T t, String str, boolean z, JsonGenerator jsonGenerator) {
        throw new UnsupportedOperationException("This type converter does not support serialization.");
    }
}
