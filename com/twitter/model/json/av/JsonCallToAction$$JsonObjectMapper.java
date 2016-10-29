package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCallToAction$$JsonObjectMapper extends JsonMapper<JsonCallToAction> {
    public JsonCallToAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCallToAction _parse(JsonParser jsonParser) throws IOException {
        JsonCallToAction jsonCallToAction = new JsonCallToAction();
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
            parseField(jsonCallToAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonCallToAction;
    }

    public static void parseField(JsonCallToAction jsonCallToAction, String str, JsonParser jsonParser) throws IOException {
        if ("type".equals(str)) {
            jsonCallToAction.a = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonCallToAction.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonCallToAction jsonCallToAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCallToAction, jsonGenerator, z);
    }

    public static void _serialize(JsonCallToAction jsonCallToAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("type", jsonCallToAction.a);
        jsonGenerator.a("url", jsonCallToAction.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
