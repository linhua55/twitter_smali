package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonPivotAction$$JsonObjectMapper extends JsonMapper<JsonPivotAction> {
    public JsonPivotAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPivotAction _parse(JsonParser jsonParser) throws IOException {
        JsonPivotAction jsonPivotAction = new JsonPivotAction();
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
            parseField(jsonPivotAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonPivotAction;
    }

    public static void parseField(JsonPivotAction jsonPivotAction, String str, JsonParser jsonParser) throws IOException {
        if ("action_url".equals(str)) {
            jsonPivotAction.b = jsonParser.a(null);
        } else if ("label".equals(str)) {
            jsonPivotAction.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonPivotAction jsonPivotAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPivotAction, jsonGenerator, z);
    }

    public static void _serialize(JsonPivotAction jsonPivotAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("action_url", jsonPivotAction.b);
        jsonGenerator.a("label", jsonPivotAction.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
