package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaSizes$$JsonObjectMapper extends JsonMapper<JsonMediaSizes> {
    public JsonMediaSizes parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaSizes _parse(JsonParser jsonParser) throws IOException {
        JsonMediaSizes jsonMediaSizes = new JsonMediaSizes();
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
            parseField(jsonMediaSizes, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaSizes;
    }

    public static void parseField(JsonMediaSizes jsonMediaSizes, String str, JsonParser jsonParser) throws IOException {
        if ("large".equals(str)) {
            jsonMediaSizes.a = JsonMediaSize$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonMediaSizes jsonMediaSizes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaSizes, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaSizes jsonMediaSizes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMediaSizes.a != null) {
            jsonGenerator.a("large");
            JsonMediaSize$$JsonObjectMapper._serialize(jsonMediaSizes.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
