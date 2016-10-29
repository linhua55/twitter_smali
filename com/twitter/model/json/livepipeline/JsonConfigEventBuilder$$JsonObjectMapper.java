package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonConfigEventBuilder$$JsonObjectMapper extends JsonMapper<JsonConfigEventBuilder> {
    public JsonConfigEventBuilder parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConfigEventBuilder _parse(JsonParser jsonParser) throws IOException {
        JsonConfigEventBuilder jsonConfigEventBuilder = new JsonConfigEventBuilder();
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
            parseField(jsonConfigEventBuilder, e, jsonParser);
            jsonParser.c();
        }
        return jsonConfigEventBuilder;
    }

    public static void parseField(JsonConfigEventBuilder jsonConfigEventBuilder, String str, JsonParser jsonParser) throws IOException {
        Long l = null;
        if ("session_id".equals(str)) {
            jsonConfigEventBuilder.a = jsonParser.a(null);
        } else if ("subscription_ttl_millis".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                l = Long.valueOf(jsonParser.p());
            }
            jsonConfigEventBuilder.b = l;
        }
    }

    public void serialize(JsonConfigEventBuilder jsonConfigEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConfigEventBuilder, jsonGenerator, z);
    }

    public static void _serialize(JsonConfigEventBuilder jsonConfigEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("session_id", jsonConfigEventBuilder.a);
        jsonGenerator.a("subscription_ttl_millis", jsonConfigEventBuilder.b.longValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
