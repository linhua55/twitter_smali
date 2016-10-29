package com.twitter.model.json.dms;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUpdateConversationAvatarEntry$$JsonObjectMapper extends JsonMapper<JsonUpdateConversationAvatarEntry> {
    public JsonUpdateConversationAvatarEntry parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUpdateConversationAvatarEntry _parse(JsonParser jsonParser) throws IOException {
        JsonUpdateConversationAvatarEntry jsonUpdateConversationAvatarEntry = new JsonUpdateConversationAvatarEntry();
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
            parseField(jsonUpdateConversationAvatarEntry, e, jsonParser);
            jsonParser.c();
        }
        return jsonUpdateConversationAvatarEntry;
    }

    public static void parseField(JsonUpdateConversationAvatarEntry jsonUpdateConversationAvatarEntry, String str, JsonParser jsonParser) throws IOException {
        if ("conversation_avatar_image_https".equals(str)) {
            jsonUpdateConversationAvatarEntry.a = jsonParser.a(null);
        } else if ("by_user_id".equals(str)) {
            jsonUpdateConversationAvatarEntry.b = jsonParser.p();
        } else {
            JsonConversationEntry$$JsonObjectMapper.parseField(jsonUpdateConversationAvatarEntry, str, jsonParser);
        }
    }

    public void serialize(JsonUpdateConversationAvatarEntry jsonUpdateConversationAvatarEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUpdateConversationAvatarEntry, jsonGenerator, z);
    }

    public static void _serialize(JsonUpdateConversationAvatarEntry jsonUpdateConversationAvatarEntry, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("conversation_avatar_image_https", jsonUpdateConversationAvatarEntry.a);
        jsonGenerator.a("by_user_id", jsonUpdateConversationAvatarEntry.b);
        JsonConversationEntry$$JsonObjectMapper._serialize(jsonUpdateConversationAvatarEntry, jsonGenerator, false);
        if (z) {
            jsonGenerator.d();
        }
    }
}
