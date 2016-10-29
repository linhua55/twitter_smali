package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaVideoVariant$$JsonObjectMapper extends JsonMapper<JsonMediaVideoVariant> {
    public JsonMediaVideoVariant parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaVideoVariant _parse(JsonParser jsonParser) throws IOException {
        JsonMediaVideoVariant jsonMediaVideoVariant = new JsonMediaVideoVariant();
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
            parseField(jsonMediaVideoVariant, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaVideoVariant;
    }

    public static void parseField(JsonMediaVideoVariant jsonMediaVideoVariant, String str, JsonParser jsonParser) throws IOException {
        if ("bitrate".equals(str)) {
            jsonMediaVideoVariant.c = jsonParser.o();
        } else if ("content_type".equals(str)) {
            jsonMediaVideoVariant.b = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonMediaVideoVariant.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonMediaVideoVariant jsonMediaVideoVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaVideoVariant, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaVideoVariant jsonMediaVideoVariant, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bitrate", jsonMediaVideoVariant.c);
        jsonGenerator.a("content_type", jsonMediaVideoVariant.b);
        jsonGenerator.a("url", jsonMediaVideoVariant.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
