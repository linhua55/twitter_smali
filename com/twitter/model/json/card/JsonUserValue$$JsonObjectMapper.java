package com.twitter.model.json.card;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUserValue$$JsonObjectMapper extends JsonMapper<JsonUserValue> {
    public JsonUserValue parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserValue _parse(JsonParser jsonParser) throws IOException {
        JsonUserValue jsonUserValue = new JsonUserValue();
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
            parseField(jsonUserValue, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserValue;
    }

    public static void parseField(JsonUserValue jsonUserValue, String str, JsonParser jsonParser) throws IOException {
        if ("id_str".equals(str)) {
            jsonUserValue.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonUserValue jsonUserValue, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserValue, jsonGenerator, z);
    }

    public static void _serialize(JsonUserValue jsonUserValue, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id_str", jsonUserValue.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
