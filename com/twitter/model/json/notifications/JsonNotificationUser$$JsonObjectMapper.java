package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonNotificationUser$$JsonObjectMapper extends JsonMapper<JsonNotificationUser> {
    public JsonNotificationUser parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationUser _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationUser jsonNotificationUser = new JsonNotificationUser();
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
            parseField(jsonNotificationUser, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationUser;
    }

    public static void parseField(JsonNotificationUser jsonNotificationUser, String str, JsonParser jsonParser) throws IOException {
        if ("bio".equals(str)) {
            jsonNotificationUser.d = jsonParser.a(null);
        } else if ("full_name".equals(str)) {
            jsonNotificationUser.c = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonNotificationUser.a = jsonParser.p();
        } else if ("following".equals(str)) {
            jsonNotificationUser.h = jsonParser.r();
        } else if ("protected".equals(str)) {
            jsonNotificationUser.g = jsonParser.r();
        } else if ("profile_banner_url".equals(str)) {
            jsonNotificationUser.f = jsonParser.a(null);
        } else if ("profile_image_url".equals(str)) {
            jsonNotificationUser.e = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonNotificationUser.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonNotificationUser jsonNotificationUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationUser, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationUser jsonNotificationUser, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bio", jsonNotificationUser.d);
        jsonGenerator.a("full_name", jsonNotificationUser.c);
        jsonGenerator.a("id", jsonNotificationUser.a);
        jsonGenerator.a("following", jsonNotificationUser.h);
        jsonGenerator.a("protected", jsonNotificationUser.g);
        jsonGenerator.a("profile_banner_url", jsonNotificationUser.f);
        jsonGenerator.a("profile_image_url", jsonNotificationUser.e);
        jsonGenerator.a("screen_name", jsonNotificationUser.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
