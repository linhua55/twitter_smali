package com.twitter.model.json.core;

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
public final class JsonTwitterCursorArray$$JsonObjectMapper extends JsonMapper<JsonTwitterCursorArray> {
    public JsonTwitterCursorArray parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterCursorArray _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterCursorArray jsonTwitterCursorArray = new JsonTwitterCursorArray();
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
            parseField(jsonTwitterCursorArray, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterCursorArray;
    }

    public static void parseField(JsonTwitterCursorArray jsonTwitterCursorArray, String str, JsonParser jsonParser) throws IOException {
        if ("next_cursor".equals(str)) {
            jsonTwitterCursorArray.b = jsonParser.a(null);
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    TwitterUser twitterUser = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
                    if (twitterUser != null) {
                        arrayList.add(twitterUser);
                    }
                }
                jsonTwitterCursorArray.a = arrayList;
                return;
            }
            jsonTwitterCursorArray.a = null;
        }
    }

    public void serialize(JsonTwitterCursorArray jsonTwitterCursorArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterCursorArray, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterCursorArray jsonTwitterCursorArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("next_cursor", jsonTwitterCursorArray.b);
        List<TwitterUser> list = jsonTwitterCursorArray.a;
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
