package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonEvent$$JsonObjectMapper extends JsonMapper<JsonEvent> {
    public JsonEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonEvent _parse(JsonParser jsonParser) throws IOException {
        JsonEvent jsonEvent = new JsonEvent();
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
            parseField(jsonEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonEvent;
    }

    public static void parseField(JsonEvent jsonEvent, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonEvent.a = jsonParser.a(null);
        } else if ("type".equals(str)) {
            jsonEvent.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonEvent jsonEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonEvent jsonEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonEvent.a);
        jsonGenerator.a("type", jsonEvent.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
