package com.twitter.model.json.stratostore;

import bbn;
import com.bluelinelabs.logansquare.typeconverters.TypeConverter;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public abstract class c<T extends Enum<T>> implements TypeConverter<T> {
    private final Class<T> a;

    public /* synthetic */ Object parse(JsonParser jsonParser) throws IOException {
        return a(jsonParser);
    }

    public /* synthetic */ void serialize(Object obj, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        a((Enum) obj, str, z, jsonGenerator);
    }

    protected c(Class<T> cls) {
        this.a = cls;
    }

    public T a(JsonParser jsonParser) throws IOException {
        if (jsonParser.d() == JsonToken.b) {
            jsonParser.a();
            if (jsonParser.d() == JsonToken.f) {
                try {
                    return Enum.valueOf(this.a, jsonParser.e());
                } catch (Throwable e) {
                    bbn.a(e);
                }
            }
        }
        return null;
    }

    public void a(T t, String str, boolean z, JsonGenerator jsonGenerator) throws IOException {
        jsonGenerator.e(str);
        jsonGenerator.a(t.toString(), null);
        jsonGenerator.d();
    }
}
