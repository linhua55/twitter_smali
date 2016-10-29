package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUpdateConversationNameEntry$$JsonObjectMapper extends JsonMapper<JsonUpdateConversationNameEntry> {
    public JsonUpdateConversationNameEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUpdateConversationNameEntry _parse(JsonParser jsonParser) throws IOException {
        JsonUpdateConversationNameEntry jsonUpdateConversationNameEntry = new JsonUpdateConversationNameEntry();
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
            parseField(jsonUpdateConversationNameEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonUpdateConversationNameEntry;
    }

    public static void parseField(JsonUpdateConversationNameEntry jsonUpdateConversationNameEntry, String str, JsonParser jsonParser) throws IOException {
        if ("by_user_id".equals(str)) {
            jsonUpdateConversationNameEntry.b = jsonParser.p();
        } else if ("conversation_name".equals(str)) {
            jsonUpdateConversationNameEntry.a = jsonParser.a(null);
        } else {
            JsonConversationEntry$$JsonObjectMapper.parseField(jsonUpdateConversationNameEntry, str, jsonParser);
        }
    }

    public void serialize(JsonUpdateConversationNameEntry jsonUpdateConversationNameEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUpdateConversationNameEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonUpdateConversationNameEntry jsonUpdateConversationNameEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("by_user_id", jsonUpdateConversationNameEntry.b);
        jsonGenerator.a("conversation_name", jsonUpdateConversationNameEntry.a);
        JsonConversationEntry$$JsonObjectMapper._serialize(jsonUpdateConversationNameEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
