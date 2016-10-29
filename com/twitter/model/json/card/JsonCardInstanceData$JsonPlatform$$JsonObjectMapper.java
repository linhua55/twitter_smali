package com.twitter.model.json.card;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.card.JsonCardInstanceData.JsonPlatform;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCardInstanceData$JsonPlatform$$JsonObjectMapper extends JsonMapper<JsonPlatform> {
    public JsonPlatform parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonPlatform _parse(JsonParser jsonParser) throws IOException {
        JsonPlatform jsonPlatform = new JsonPlatform();
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
            parseField(jsonPlatform, e, jsonParser);
            jsonParser.c();
        }
        return jsonPlatform;
    }

    public static void parseField(JsonPlatform jsonPlatform, String str, JsonParser jsonParser) throws IOException {
        if ("audience".equals(str)) {
            jsonPlatform.a = JsonCardInstanceData$JsonAudience$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonPlatform jsonPlatform, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonPlatform, jsonGenerator, z);
    }

    public static void _serialize(JsonPlatform jsonPlatform, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonPlatform.a != null) {
            jsonGenerator.a("audience");
            JsonCardInstanceData$JsonAudience$$JsonObjectMapper._serialize(jsonPlatform.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
