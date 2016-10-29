package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTimelineTweet$$JsonObjectMapper extends JsonMapper<JsonTimelineTweet> {
    public JsonTimelineTweet parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTimelineTweet _parse(JsonParser jsonParser) throws IOException {
        JsonTimelineTweet jsonTimelineTweet = new JsonTimelineTweet();
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
            parseField(jsonTimelineTweet, e, jsonParser);
            jsonParser.c();
        }
        return jsonTimelineTweet;
    }

    public static void parseField(JsonTimelineTweet jsonTimelineTweet, String str, JsonParser jsonParser) throws IOException {
        if ("displayType".equals(str)) {
            jsonTimelineTweet.b = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonTimelineTweet.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTimelineTweet jsonTimelineTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTimelineTweet, jsonGenerator, z);
    }

    public static void _serialize(JsonTimelineTweet jsonTimelineTweet, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("displayType", jsonTimelineTweet.b);
        jsonGenerator.a("id", jsonTimelineTweet.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
