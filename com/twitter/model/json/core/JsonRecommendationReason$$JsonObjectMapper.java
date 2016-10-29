package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonRecommendationReason$$JsonObjectMapper extends JsonMapper<JsonRecommendationReason> {
    public JsonRecommendationReason parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonRecommendationReason _parse(JsonParser jsonParser) throws IOException {
        JsonRecommendationReason jsonRecommendationReason = new JsonRecommendationReason();
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
            parseField(jsonRecommendationReason, e, jsonParser);
            jsonParser.c();
        }
        return jsonRecommendationReason;
    }

    public static void parseField(JsonRecommendationReason jsonRecommendationReason, String str, JsonParser jsonParser) throws IOException {
        if ("checked".equals(str)) {
            jsonRecommendationReason.d = jsonParser.r();
        } else if ("context".equals(str)) {
            jsonRecommendationReason.a = jsonParser.a(null);
        } else if ("interest".equals(str)) {
            jsonRecommendationReason.b = jsonParser.a(null);
        } else if ("show_bio".equals(str)) {
            jsonRecommendationReason.c = jsonParser.r();
        }
    }

    public void serialize(JsonRecommendationReason jsonRecommendationReason, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonRecommendationReason, jsonGenerator, z);
    }

    public static void _serialize(JsonRecommendationReason jsonRecommendationReason, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("checked", jsonRecommendationReason.d);
        jsonGenerator.a("context", jsonRecommendationReason.a);
        jsonGenerator.a("interest", jsonRecommendationReason.b);
        jsonGenerator.a("show_bio", jsonRecommendationReason.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
