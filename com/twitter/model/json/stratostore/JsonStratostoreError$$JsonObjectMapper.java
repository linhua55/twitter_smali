package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStratostoreError$$JsonObjectMapper extends JsonMapper<JsonStratostoreError> {
    public JsonStratostoreError parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStratostoreError _parse(JsonParser jsonParser) throws IOException {
        JsonStratostoreError jsonStratostoreError = new JsonStratostoreError();
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
            parseField(jsonStratostoreError, e, jsonParser);
            jsonParser.c();
        }
        return jsonStratostoreError;
    }

    public static void parseField(JsonStratostoreError jsonStratostoreError, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            jsonStratostoreError.a = jsonParser.o();
        } else if ("message".equals(str)) {
            jsonStratostoreError.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonStratostoreError jsonStratostoreError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStratostoreError, jsonGenerator, z);
    }

    public static void _serialize(JsonStratostoreError jsonStratostoreError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", jsonStratostoreError.a);
        jsonGenerator.a("message", jsonStratostoreError.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
