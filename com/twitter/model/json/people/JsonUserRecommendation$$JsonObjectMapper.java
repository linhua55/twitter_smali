package com.twitter.model.json.people;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonUserRecommendation$$JsonObjectMapper extends JsonMapper<JsonUserRecommendation> {
    public JsonUserRecommendation parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUserRecommendation _parse(JsonParser jsonParser) throws IOException {
        JsonUserRecommendation jsonUserRecommendation = new JsonUserRecommendation();
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
            parseField(jsonUserRecommendation, e, jsonParser);
            jsonParser.c();
        }
        return jsonUserRecommendation;
    }

    public static void parseField(JsonUserRecommendation jsonUserRecommendation, String str, JsonParser jsonParser) throws IOException {
        if ("social_text".equals(str)) {
            jsonUserRecommendation.b = jsonParser.a(null);
        } else if ("tracking_token".equals(str)) {
            jsonUserRecommendation.c = jsonParser.a(null);
        } else if ("user".equals(str)) {
            jsonUserRecommendation.a = (TwitterUser) LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser);
        }
    }

    public void serialize(JsonUserRecommendation jsonUserRecommendation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUserRecommendation, jsonGenerator, z);
    }

    public static void _serialize(JsonUserRecommendation jsonUserRecommendation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("social_text", jsonUserRecommendation.b);
        jsonGenerator.a("tracking_token", jsonUserRecommendation.c);
        if (jsonUserRecommendation.a != null) {
            LoganSquare.typeConverterFor(TwitterUser.class).serialize(jsonUserRecommendation.a, "user", true, jsonGenerator);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
