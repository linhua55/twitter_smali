package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonNotificationContextUser$$JsonObjectMapper extends JsonMapper<JsonNotificationContextUser> {
    public JsonNotificationContextUser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationContextUser _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationContextUser jsonNotificationContextUser = new JsonNotificationContextUser();
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
            parseField(jsonNotificationContextUser, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationContextUser;
    }

    public static void parseField(JsonNotificationContextUser jsonNotificationContextUser, String str, JsonParser jsonParser) throws IOException {
        if ("image_url".equals(str)) {
            jsonNotificationContextUser.b = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonNotificationContextUser.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonNotificationContextUser jsonNotificationContextUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationContextUser, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationContextUser jsonNotificationContextUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("image_url", jsonNotificationContextUser.b);
        jsonGenerator.a("screen_name", jsonNotificationContextUser.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
