package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonConversationEvent$$JsonObjectMapper extends JsonMapper<JsonConversationEvent> {
    public JsonConversationEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationEvent _parse(JsonParser jsonParser) throws IOException {
        JsonConversationEvent jsonConversationEvent = new JsonConversationEvent();
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
            parseField(jsonConversationEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationEvent;
    }

    public static void parseField(JsonConversationEvent jsonConversationEvent, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonConversationEvent.i = jsonParser.r();
        } else if ("conversation_id".equals(str)) {
            jsonConversationEvent.f = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonConversationEvent.g = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonConversationEvent.e = jsonParser.p();
        } else if ("sender_id".equals(str)) {
            jsonConversationEvent.h = jsonParser.p();
        }
    }

    public void serialize(JsonConversationEvent jsonConversationEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationEvent jsonConversationEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonConversationEvent.i);
        jsonGenerator.a("conversation_id", jsonConversationEvent.f);
        jsonGenerator.a("time", jsonConversationEvent.g);
        jsonGenerator.a("id", jsonConversationEvent.e);
        jsonGenerator.a("sender_id", jsonConversationEvent.h);
        if (z) {
            jsonGenerator.d();
        }
    }
}
