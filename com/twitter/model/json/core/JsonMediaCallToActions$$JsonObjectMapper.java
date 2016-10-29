package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaCallToActions$$JsonObjectMapper extends JsonMapper<JsonMediaCallToActions> {
    public JsonMediaCallToActions parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaCallToActions _parse(JsonParser jsonParser) throws IOException {
        JsonMediaCallToActions jsonMediaCallToActions = new JsonMediaCallToActions();
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
            parseField(jsonMediaCallToActions, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaCallToActions;
    }

    public static void parseField(JsonMediaCallToActions jsonMediaCallToActions, String str, JsonParser jsonParser) throws IOException {
        if ("visit_site".equals(str)) {
            jsonMediaCallToActions.b = JsonMediaCallToAction$$JsonObjectMapper._parse(jsonParser);
        } else if ("watch_now".equals(str)) {
            jsonMediaCallToActions.a = JsonMediaCallToAction$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonMediaCallToActions jsonMediaCallToActions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaCallToActions, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaCallToActions jsonMediaCallToActions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMediaCallToActions.b != null) {
            jsonGenerator.a("visit_site");
            JsonMediaCallToAction$$JsonObjectMapper._serialize(jsonMediaCallToActions.b, jsonGenerator, true);
        }
        if (jsonMediaCallToActions.a != null) {
            jsonGenerator.a("watch_now");
            JsonMediaCallToAction$$JsonObjectMapper._serialize(jsonMediaCallToActions.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
