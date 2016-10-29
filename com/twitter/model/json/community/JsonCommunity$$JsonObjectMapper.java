package com.twitter.model.json.community;

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
public final class JsonCommunity$$JsonObjectMapper extends JsonMapper<JsonCommunity> {
    public JsonCommunity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCommunity _parse(JsonParser jsonParser) throws IOException {
        JsonCommunity jsonCommunity = new JsonCommunity();
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
            parseField(jsonCommunity, e, jsonParser);
            jsonParser.c();
        }
        return jsonCommunity;
    }

    public static void parseField(JsonCommunity jsonCommunity, String str, JsonParser jsonParser) throws IOException {
        if ("description".equals(str)) {
            jsonCommunity.c = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonCommunity.a = jsonParser.p();
        } else if ("image_url".equals(str)) {
            jsonCommunity.d = jsonParser.a(null);
        } else if ("is_member".equals(str)) {
            jsonCommunity.g = jsonParser.r();
        } else if ("member_count".equals(str)) {
            jsonCommunity.e = jsonParser.o();
        } else if ("name".equals(str)) {
            jsonCommunity.b = jsonParser.a(null);
        } else if (!"top_contributors".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    TwitterUser twitterUser = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
                    if (twitterUser != null) {
                        arrayList.add(twitterUser);
                    }
                }
                jsonCommunity.f = arrayList;
                return;
            }
            jsonCommunity.f = null;
        }
    }

    public void serialize(JsonCommunity jsonCommunity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCommunity, jsonGenerator, z);
    }

    public static void _serialize(JsonCommunity jsonCommunity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("description", jsonCommunity.c);
        jsonGenerator.a("id", jsonCommunity.a);
        jsonGenerator.a("image_url", jsonCommunity.d);
        jsonGenerator.a("is_member", jsonCommunity.g);
        jsonGenerator.a("member_count", jsonCommunity.e);
        jsonGenerator.a("name", jsonCommunity.b);
        List<TwitterUser> list = jsonCommunity.f;
        if (list != null) {
            jsonGenerator.a("top_contributors");
            jsonGenerator.a();
            for (TwitterUser twitterUser : list) {
                if (twitterUser != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(twitterUser, "lslocaltop_contributorsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
