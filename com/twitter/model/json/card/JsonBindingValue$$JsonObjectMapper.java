package com.twitter.model.json.card;

import cgp;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.card.property.ImageSpec;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonBindingValue$$JsonObjectMapper extends JsonMapper<JsonBindingValue> {
    public JsonBindingValue parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBindingValue _parse(JsonParser jsonParser) throws IOException {
        JsonBindingValue jsonBindingValue = new JsonBindingValue();
        if (jsonParser.d() == null) {
            jsonParser.a();
        }
        if (jsonParser.d() != JsonToken.b) {
            jsonParser.c();
            return null;
        }
        while (jsonParser.a() != JsonToken.c) {
            String e = jsonParser.e();
            jsonParser.a();
            parseField(jsonBindingValue, e, jsonParser);
            jsonParser.c();
        }
        return jsonBindingValue;
    }

    public static void parseField(JsonBindingValue jsonBindingValue, String str, JsonParser jsonParser) throws IOException {
        Boolean bool = null;
        if ("boolean_value".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                bool = Boolean.valueOf(jsonParser.r());
            }
            jsonBindingValue.d = bool;
        } else if ("image_value".equals(str)) {
            jsonBindingValue.a = (ImageSpec) LoganSquare.typeConverterFor(ImageSpec.class).parse(jsonParser);
        } else if ("scribe_key".equals(str)) {
            jsonBindingValue.e = jsonParser.a(null);
        } else if ("string_value".equals(str)) {
            jsonBindingValue.c = jsonParser.a(null);
        } else if ("user_value".equals(str)) {
            jsonBindingValue.b = (cgp) LoganSquare.typeConverterFor(cgp.class).parse(jsonParser);
        }
    }

    public void serialize(JsonBindingValue jsonBindingValue, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBindingValue, jsonGenerator, z);
    }

    public static void _serialize(JsonBindingValue jsonBindingValue, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("boolean_value", jsonBindingValue.d.booleanValue());
        if (jsonBindingValue.a != null) {
            LoganSquare.typeConverterFor(ImageSpec.class).serialize(jsonBindingValue.a, "image_value", true, jsonGenerator);
        }
        jsonGenerator.a("scribe_key", jsonBindingValue.e);
        jsonGenerator.a("string_value", jsonBindingValue.c);
        if (jsonBindingValue.b != null) {
            LoganSquare.typeConverterFor(cgp.class).serialize(jsonBindingValue.b, "user_value", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
