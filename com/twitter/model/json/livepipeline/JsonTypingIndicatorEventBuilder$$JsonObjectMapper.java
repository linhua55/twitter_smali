package com.twitter.model.json.livepipeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTypingIndicatorEventBuilder$$JsonObjectMapper extends JsonMapper<JsonTypingIndicatorEventBuilder> {
    public JsonTypingIndicatorEventBuilder parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTypingIndicatorEventBuilder _parse(JsonParser jsonParser) throws IOException {
        JsonTypingIndicatorEventBuilder jsonTypingIndicatorEventBuilder = new JsonTypingIndicatorEventBuilder();
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
            parseField(jsonTypingIndicatorEventBuilder, e, jsonParser);
            jsonParser.c();
        }
        return jsonTypingIndicatorEventBuilder;
    }

    public static void parseField(JsonTypingIndicatorEventBuilder jsonTypingIndicatorEventBuilder, String str, JsonParser jsonParser) throws IOException {
        Long l = null;
        if ("conversation_id".equals(str)) {
            jsonTypingIndicatorEventBuilder.a = jsonParser.a(null);
        } else if ("user_id".equals(str)) {
            if (jsonParser.d() != JsonToken.m) {
                l = Long.valueOf(jsonParser.p());
            }
            jsonTypingIndicatorEventBuilder.b = l;
        }
    }

    public void serialize(JsonTypingIndicatorEventBuilder jsonTypingIndicatorEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTypingIndicatorEventBuilder, jsonGenerator, z);
    }

    public static void _serialize(JsonTypingIndicatorEventBuilder jsonTypingIndicatorEventBuilder, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("conversation_id", jsonTypingIndicatorEventBuilder.a);
        jsonGenerator.a("user_id", jsonTypingIndicatorEventBuilder.b.longValue());
        if (z) {
            jsonGenerator.d();
        }
    }
}
