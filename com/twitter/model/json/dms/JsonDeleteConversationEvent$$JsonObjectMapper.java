package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonDeleteConversationEvent$$JsonObjectMapper extends JsonMapper<JsonDeleteConversationEvent> {
    public JsonDeleteConversationEvent parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDeleteConversationEvent _parse(JsonParser jsonParser) throws IOException {
        JsonDeleteConversationEvent jsonDeleteConversationEvent = new JsonDeleteConversationEvent();
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
            parseField(jsonDeleteConversationEvent, e, jsonParser);
            jsonParser.c();
        }
        return jsonDeleteConversationEvent;
    }

    public static void parseField(JsonDeleteConversationEvent jsonDeleteConversationEvent, String str, JsonParser jsonParser) throws IOException {
        if ("conversation_id".equals(str)) {
            jsonDeleteConversationEvent.c = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonDeleteConversationEvent.b = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonDeleteConversationEvent.a = jsonParser.p();
        }
    }

    public void serialize(JsonDeleteConversationEvent jsonDeleteConversationEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDeleteConversationEvent, jsonGenerator, z);
    }

    public static void _serialize(JsonDeleteConversationEvent jsonDeleteConversationEvent, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("conversation_id", jsonDeleteConversationEvent.c);
        jsonGenerator.a("time", jsonDeleteConversationEvent.b);
        jsonGenerator.a("id", jsonDeleteConversationEvent.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
