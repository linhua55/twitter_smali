package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaCallToAction$$JsonObjectMapper extends JsonMapper<JsonMediaCallToAction> {
    public JsonMediaCallToAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaCallToAction _parse(JsonParser jsonParser) throws IOException {
        JsonMediaCallToAction jsonMediaCallToAction = new JsonMediaCallToAction();
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
            parseField(jsonMediaCallToAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaCallToAction;
    }

    public static void parseField(JsonMediaCallToAction jsonMediaCallToAction, String str, JsonParser jsonParser) throws IOException {
        if ("url".equals(str)) {
            jsonMediaCallToAction.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonMediaCallToAction jsonMediaCallToAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaCallToAction, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaCallToAction jsonMediaCallToAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("url", jsonMediaCallToAction.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
