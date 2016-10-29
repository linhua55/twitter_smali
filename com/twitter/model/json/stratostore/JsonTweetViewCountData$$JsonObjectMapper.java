package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTweetViewCountData$$JsonObjectMapper extends JsonMapper<JsonTweetViewCountData> {
    public JsonTweetViewCountData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetViewCountData _parse(JsonParser jsonParser) throws IOException {
        JsonTweetViewCountData jsonTweetViewCountData = new JsonTweetViewCountData();
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
            parseField(jsonTweetViewCountData, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetViewCountData;
    }

    public static void parseField(JsonTweetViewCountData jsonTweetViewCountData, String str, JsonParser jsonParser) throws IOException {
        if ("impressions".equals(str)) {
            jsonTweetViewCountData.a = jsonParser.p();
        }
    }

    public void serialize(JsonTweetViewCountData jsonTweetViewCountData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetViewCountData, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetViewCountData jsonTweetViewCountData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("impressions", jsonTweetViewCountData.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
