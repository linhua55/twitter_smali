package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.ap;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonNotificationTweet$$JsonObjectMapper extends JsonMapper<JsonNotificationTweet> {
    public JsonNotificationTweet parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonNotificationTweet _parse(JsonParser jsonParser) throws IOException {
        JsonNotificationTweet jsonNotificationTweet = new JsonNotificationTweet();
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
            parseField(jsonNotificationTweet, e, jsonParser);
            jsonParser.c();
        }
        return jsonNotificationTweet;
    }

    public static void parseField(JsonNotificationTweet jsonNotificationTweet, String str, JsonParser jsonParser) throws IOException {
        if ("created_at".equals(str)) {
            jsonNotificationTweet.c = jsonParser.p();
        } else if ("id".equals(str)) {
            jsonNotificationTweet.a = jsonParser.p();
        } else if ("image_url".equals(str)) {
            jsonNotificationTweet.e = jsonParser.a(null);
        } else if ("mention_entities".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    ap apVar = (ap) LoganSquare.typeConverterFor(ap.class).parse(jsonParser);
                    if (apVar != null) {
                        arrayList.add(apVar);
                    }
                }
                jsonNotificationTweet.g = arrayList;
                return;
            }
            jsonNotificationTweet.g = null;
        } else if ("original_id".equals(str)) {
            jsonNotificationTweet.b = jsonParser.p();
        } else if ("possibly_sensitive".equals(str)) {
            jsonNotificationTweet.f = jsonParser.r();
        } else if ("text".equals(str)) {
            jsonNotificationTweet.d = jsonParser.a(null);
        }
    }

    public void serialize(JsonNotificationTweet jsonNotificationTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonNotificationTweet, jsonGenerator, z);
    }

    public static void _serialize(JsonNotificationTweet jsonNotificationTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("created_at", jsonNotificationTweet.c);
        jsonGenerator.a("id", jsonNotificationTweet.a);
        jsonGenerator.a("image_url", jsonNotificationTweet.e);
        List<ap> list = jsonNotificationTweet.g;
        if (list != null) {
            jsonGenerator.a("mention_entities");
            jsonGenerator.a();
            for (ap apVar : list) {
                if (apVar != null) {
                    LoganSquare.typeConverterFor(ap.class).serialize(apVar, "lslocalmention_entitiesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("original_id", jsonNotificationTweet.b);
        jsonGenerator.a("possibly_sensitive", jsonNotificationTweet.f);
        jsonGenerator.a("text", jsonNotificationTweet.d);
        if (z) {
            jsonGenerator.d();
        }
    }
}
