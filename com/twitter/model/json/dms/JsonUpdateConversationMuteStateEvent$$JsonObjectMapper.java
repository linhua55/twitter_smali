package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUpdateConversationMuteStateEvent$$JsonObjectMapper extends JsonMapper<JsonUpdateConversationMuteStateEvent> {
    public JsonUpdateConversationMuteStateEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUpdateConversationMuteStateEvent _parse(JsonParser jsonParser) throws IOException {
        JsonUpdateConversationMuteStateEvent jsonUpdateConversationMuteStateEvent = new JsonUpdateConversationMuteStateEvent();
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
            parseField(jsonUpdateConversationMuteStateEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonUpdateConversationMuteStateEvent;
    }

    public static void parseField(JsonUpdateConversationMuteStateEvent jsonUpdateConversationMuteStateEvent, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonUpdateConversationMuteStateEvent.d = jsonParser.r();
        } else if ("conversation_id".equals(str)) {
            jsonUpdateConversationMuteStateEvent.c = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonUpdateConversationMuteStateEvent.b = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonUpdateConversationMuteStateEvent.a = jsonParser.p();
        }
    }

    public void serialize(JsonUpdateConversationMuteStateEvent jsonUpdateConversationMuteStateEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUpdateConversationMuteStateEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonUpdateConversationMuteStateEvent jsonUpdateConversationMuteStateEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonUpdateConversationMuteStateEvent.d);
        jsonGenerator.a("conversation_id", jsonUpdateConversationMuteStateEvent.c);
        jsonGenerator.a("time", jsonUpdateConversationMuteStateEvent.b);
        jsonGenerator.a("id", jsonUpdateConversationMuteStateEvent.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
