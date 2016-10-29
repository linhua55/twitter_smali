package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonDmUpdateEventBuilder$$JsonObjectMapper extends JsonMapper<JsonDmUpdateEventBuilder> {
    public JsonDmUpdateEventBuilder parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDmUpdateEventBuilder _parse(JsonParser jsonParser) throws IOException {
        JsonDmUpdateEventBuilder jsonDmUpdateEventBuilder = new JsonDmUpdateEventBuilder();
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
            parseField(jsonDmUpdateEventBuilder, e, jsonParser);
            jsonParser.c();
        }
        return jsonDmUpdateEventBuilder;
    }

    public static void parseField(JsonDmUpdateEventBuilder jsonDmUpdateEventBuilder, String str, JsonParser jsonParser) throws IOException {
        Long l = null;
        if ("conversation_id".equals(str)) {
            jsonDmUpdateEventBuilder.a = jsonParser.a(null);
        } else if ("user_id".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                l = Long.valueOf(jsonParser.p());
            }
            jsonDmUpdateEventBuilder.b = l;
        }
    }

    public void serialize(JsonDmUpdateEventBuilder jsonDmUpdateEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDmUpdateEventBuilder, jsonGenerator, z);
    }

    public static void _serialize(JsonDmUpdateEventBuilder jsonDmUpdateEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("conversation_id", jsonDmUpdateEventBuilder.a);
        jsonGenerator.a("user_id", jsonDmUpdateEventBuilder.b.longValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
