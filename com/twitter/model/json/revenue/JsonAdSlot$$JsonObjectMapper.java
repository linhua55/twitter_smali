package com.twitter.model.json.revenue;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonAdSlot$$JsonObjectMapper extends JsonMapper<JsonAdSlot> {
    public JsonAdSlot parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAdSlot _parse(JsonParser jsonParser) throws IOException {
        JsonAdSlot jsonAdSlot = new JsonAdSlot();
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
            parseField(jsonAdSlot, e, jsonParser);
            jsonParser.c();
        }
        return jsonAdSlot;
    }

    public static void parseField(JsonAdSlot jsonAdSlot, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonAdSlot.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonAdSlot jsonAdSlot, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAdSlot, jsonGenerator, z);
    }

    public static void _serialize(JsonAdSlot jsonAdSlot, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonAdSlot.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
