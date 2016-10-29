package com.twitter.model.json.media.sru;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonSruError$$JsonObjectMapper extends JsonMapper<JsonSruError> {
    public JsonSruError parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonSruError _parse(JsonParser jsonParser) throws IOException {
        JsonSruError jsonSruError = new JsonSruError();
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
            parseField(jsonSruError, e, jsonParser);
            jsonParser.c();
        }
        return jsonSruError;
    }

    public static void parseField(JsonSruError jsonSruError, String str, JsonParser jsonParser) throws IOException {
        if ("code".equals(str)) {
            jsonSruError.a = jsonParser.o();
        } else if ("message".equals(str)) {
            jsonSruError.c = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonSruError.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonSruError jsonSruError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonSruError, jsonGenerator, z);
    }

    public static void _serialize(JsonSruError jsonSruError, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("code", jsonSruError.a);
        jsonGenerator.a("message", jsonSruError.c);
        jsonGenerator.a("name", jsonSruError.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
