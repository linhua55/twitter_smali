package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonTwitterStatus.UserRetweetId;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterStatus$UserRetweetId$$JsonObjectMapper extends JsonMapper<UserRetweetId> {
    public UserRetweetId parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static UserRetweetId _parse(JsonParser jsonParser) throws IOException {
        UserRetweetId userRetweetId = new UserRetweetId();
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
            parseField(userRetweetId, e, jsonParser);
            jsonParser.c();
        }
        return userRetweetId;
    }

    public static void parseField(UserRetweetId userRetweetId, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            userRetweetId.a = jsonParser.p();
        }
    }

    public void serialize(UserRetweetId userRetweetId, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(userRetweetId, jsonGenerator, z);
    }

    public static void _serialize(UserRetweetId userRetweetId, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", userRetweetId.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
