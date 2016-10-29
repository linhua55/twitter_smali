package com.twitter.model.json.card;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.card.JsonCardInstanceData.JsonAudience;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCardInstanceData$JsonAudience$$JsonObjectMapper extends JsonMapper<JsonAudience> {
    public JsonAudience parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAudience _parse(JsonParser jsonParser) throws IOException {
        JsonAudience jsonAudience = new JsonAudience();
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
            parseField(jsonAudience, e, jsonParser);
            jsonParser.c();
        }
        return jsonAudience;
    }

    public static void parseField(JsonAudience jsonAudience, String str, JsonParser jsonParser) throws IOException {
        if ("bucket".equals(str)) {
            jsonAudience.b = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonAudience.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonAudience jsonAudience, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAudience, jsonGenerator, z);
    }

    public static void _serialize(JsonAudience jsonAudience, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bucket", jsonAudience.b);
        jsonGenerator.a("name", jsonAudience.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
