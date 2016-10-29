package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonAvatars$$JsonObjectMapper extends JsonMapper<JsonAvatars> {
    public JsonAvatars parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonAvatars _parse(JsonParser jsonParser) throws IOException {
        JsonAvatars jsonAvatars = new JsonAvatars();
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
            parseField(jsonAvatars, e, jsonParser);
            jsonParser.c();
        }
        return jsonAvatars;
    }

    public static void parseField(JsonAvatars jsonAvatars, String str, JsonParser jsonParser) throws IOException {
        if (!"users".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                TwitterUser twitterUser = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
                if (twitterUser != null) {
                    arrayList.add(twitterUser);
                }
            }
            jsonAvatars.a = arrayList;
            return;
        }
        jsonAvatars.a = null;
    }

    public void serialize(JsonAvatars jsonAvatars, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonAvatars, jsonGenerator, z);
    }

    public static void _serialize(JsonAvatars jsonAvatars, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<TwitterUser> list = jsonAvatars.a;
        if (list != null) {
            jsonGenerator.a("users");
            jsonGenerator.a();
            for (TwitterUser twitterUser : list) {
                if (twitterUser != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(twitterUser, "lslocalusersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
