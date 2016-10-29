package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonNotificationAction$$JsonObjectMapper extends JsonMapper<JsonNotificationAction> {
    public JsonNotificationAction parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationAction _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationAction jsonNotificationAction = new JsonNotificationAction();
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
            parseField(jsonNotificationAction, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationAction;
    }

    public static void parseField(JsonNotificationAction jsonNotificationAction, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonNotificationAction.a = jsonParser.a(null);
        } else if ("scribe_target".equals(str)) {
            jsonNotificationAction.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonNotificationAction jsonNotificationAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationAction, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationAction jsonNotificationAction, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonNotificationAction.a);
        jsonGenerator.a("scribe_target", jsonNotificationAction.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
