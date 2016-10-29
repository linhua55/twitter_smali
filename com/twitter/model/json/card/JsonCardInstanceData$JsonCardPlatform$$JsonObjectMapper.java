package com.twitter.model.json.card;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.card.JsonCardInstanceData.JsonCardPlatform;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonCardInstanceData$JsonCardPlatform$$JsonObjectMapper extends JsonMapper<JsonCardPlatform> {
    public JsonCardPlatform parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCardPlatform _parse(JsonParser jsonParser) throws IOException {
        JsonCardPlatform jsonCardPlatform = new JsonCardPlatform();
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
            parseField(jsonCardPlatform, e, jsonParser);
            jsonParser.c();
        }
        return jsonCardPlatform;
    }

    public static void parseField(JsonCardPlatform jsonCardPlatform, String str, JsonParser jsonParser) throws IOException {
        if ("platform".equals(str)) {
            jsonCardPlatform.a = JsonCardInstanceData$JsonPlatform$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonCardPlatform jsonCardPlatform, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCardPlatform, jsonGenerator, z);
    }

    public static void _serialize(JsonCardPlatform jsonCardPlatform, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonCardPlatform.a != null) {
            jsonGenerator.a("platform");
            JsonCardInstanceData$JsonPlatform$$JsonObjectMapper._serialize(jsonCardPlatform.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
