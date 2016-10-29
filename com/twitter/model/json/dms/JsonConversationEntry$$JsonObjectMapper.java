package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonConversationEntry$$JsonObjectMapper extends JsonMapper<JsonConversationEntry> {
    public JsonConversationEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonConversationEntry _parse(JsonParser jsonParser) throws IOException {
        JsonConversationEntry jsonConversationEntry = new JsonConversationEntry();
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
            parseField(jsonConversationEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonConversationEntry;
    }

    public static void parseField(JsonConversationEntry jsonConversationEntry, String str, JsonParser jsonParser) throws IOException {
        if ("affects_sort".equals(str)) {
            jsonConversationEntry.d = jsonParser.r();
        } else {
            JsonConversationEvent$$JsonObjectMapper.parseField(jsonConversationEntry, str, jsonParser);
        }
    }

    public void serialize(JsonConversationEntry jsonConversationEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonConversationEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonConversationEntry jsonConversationEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("affects_sort", jsonConversationEntry.d);
        JsonConversationEvent$$JsonObjectMapper._serialize(jsonConversationEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
