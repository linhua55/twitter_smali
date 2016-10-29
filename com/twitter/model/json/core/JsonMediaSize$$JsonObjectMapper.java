package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaSize$$JsonObjectMapper extends JsonMapper<JsonMediaSize> {
    public JsonMediaSize parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaSize _parse(JsonParser jsonParser) throws IOException {
        JsonMediaSize jsonMediaSize = new JsonMediaSize();
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
            parseField(jsonMediaSize, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaSize;
    }

    public static void parseField(JsonMediaSize jsonMediaSize, String str, JsonParser jsonParser) throws IOException {
        if ("h".equals(str)) {
            jsonMediaSize.b = jsonParser.o();
        } else if ("w".equals(str)) {
            jsonMediaSize.a = jsonParser.o();
        }
    }

    public void serialize(JsonMediaSize jsonMediaSize, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaSize, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaSize jsonMediaSize, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("h", jsonMediaSize.b);
        jsonGenerator.a("w", jsonMediaSize.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
