package com.twitter.model.json.av;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonVideoAnalyticsScribe$$JsonObjectMapper extends JsonMapper<JsonVideoAnalyticsScribe> {
    public JsonVideoAnalyticsScribe parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonVideoAnalyticsScribe _parse(JsonParser jsonParser) throws IOException {
        JsonVideoAnalyticsScribe jsonVideoAnalyticsScribe = new JsonVideoAnalyticsScribe();
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
            parseField(jsonVideoAnalyticsScribe, e, jsonParser);
            jsonParser.c();
        }
        return jsonVideoAnalyticsScribe;
    }

    public static void parseField(JsonVideoAnalyticsScribe jsonVideoAnalyticsScribe, String str, JsonParser jsonParser) throws IOException {
        if ("tweet_id".equals(str)) {
            jsonVideoAnalyticsScribe.a = jsonParser.a(null);
        } else if ("video_analytics_scribe_passthrough".equals(str)) {
            jsonVideoAnalyticsScribe.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonVideoAnalyticsScribe jsonVideoAnalyticsScribe, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonVideoAnalyticsScribe, jsonGenerator, z);
    }

    public static void _serialize(JsonVideoAnalyticsScribe jsonVideoAnalyticsScribe, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("tweet_id", jsonVideoAnalyticsScribe.a);
        jsonGenerator.a("video_analytics_scribe_passthrough", jsonVideoAnalyticsScribe.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
