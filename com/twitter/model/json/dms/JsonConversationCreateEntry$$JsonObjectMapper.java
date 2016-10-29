package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonConversationCreateEntry$$JsonObjectMapper extends JsonMapper<JsonConversationCreateEntry> {
    public JsonConversationCreateEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationCreateEntry _parse(JsonParser jsonParser) throws IOException {
        JsonConversationCreateEntry jsonConversationCreateEntry = new JsonConversationCreateEntry();
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
            parseField(jsonConversationCreateEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationCreateEntry;
    }

    public static void parseField(JsonConversationCreateEntry jsonConversationCreateEntry, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonConversationCreateEntry.d = jsonParser.r();
        } else if ("conversation_id".equals(str)) {
            jsonConversationCreateEntry.c = jsonParser.a(null);
        } else if ("time".equals(str)) {
            jsonConversationCreateEntry.b = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonConversationCreateEntry.a = jsonParser.p();
        }
    }

    public void serialize(JsonConversationCreateEntry jsonConversationCreateEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationCreateEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationCreateEntry jsonConversationCreateEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonConversationCreateEntry.d);
        jsonGenerator.a("conversation_id", jsonConversationCreateEntry.c);
        jsonGenerator.a("time", jsonConversationCreateEntry.b);
        jsonGenerator.a("id", jsonConversationCreateEntry.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
