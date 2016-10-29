package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterList$$JsonObjectMapper extends JsonMapper<JsonTwitterList> {
    public JsonTwitterList parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterList _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterList jsonTwitterList = new JsonTwitterList();
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
            parseField(jsonTwitterList, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterList;
    }

    public static void parseField(JsonTwitterList jsonTwitterList, String str, JsonParser jsonParser) throws IOException {
        if ("user".equals(str)) {
            jsonTwitterList.k = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        } else if ("description".equals(str)) {
            jsonTwitterList.g = jsonParser.a(null);
        } else if ("following".equals(str)) {
            jsonTwitterList.d = jsonParser.r();
        } else if ("full_name".equals(str)) {
            jsonTwitterList.f = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonTwitterList.c = jsonParser.p();
        } else if ("profile_image_url".equals(str)) {
            jsonTwitterList.h = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonTwitterList.e = jsonParser.a(null);
        } else if ("member_count".equals(str)) {
            jsonTwitterList.a = jsonParser.o();
        } else if ("mode".equals(str)) {
            jsonTwitterList.i = jsonParser.a(null);
        } else if ("slug".equals(str)) {
            jsonTwitterList.j = jsonParser.a(null);
        } else if ("subscriber_count".equals(str)) {
            jsonTwitterList.b = jsonParser.o();
        }
    }

    public void serialize(JsonTwitterList jsonTwitterList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterList, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterList jsonTwitterList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonTwitterList.k != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonTwitterList.k, "user", true, jsonGenerator);
        }
        jsonGenerator.a("description", jsonTwitterList.g);
        jsonGenerator.a("following", jsonTwitterList.d);
        jsonGenerator.a("full_name", jsonTwitterList.f);
        jsonGenerator.a("id", jsonTwitterList.c);
        jsonGenerator.a("profile_image_url", jsonTwitterList.h);
        jsonGenerator.a("name", jsonTwitterList.e);
        jsonGenerator.a("member_count", jsonTwitterList.a);
        jsonGenerator.a("mode", jsonTwitterList.i);
        jsonGenerator.a("slug", jsonTwitterList.j);
        jsonGenerator.a("subscriber_count", jsonTwitterList.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
