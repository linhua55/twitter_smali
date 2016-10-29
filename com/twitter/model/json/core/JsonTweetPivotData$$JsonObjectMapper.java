package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTweetPivotData$$JsonObjectMapper extends JsonMapper<JsonTweetPivotData> {
    public JsonTweetPivotData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetPivotData _parse(JsonParser jsonParser) throws IOException {
        JsonTweetPivotData jsonTweetPivotData = new JsonTweetPivotData();
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
            parseField(jsonTweetPivotData, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetPivotData;
    }

    public static void parseField(JsonTweetPivotData jsonTweetPivotData, String str, JsonParser jsonParser) throws IOException {
        if ("name".equals(str)) {
            jsonTweetPivotData.a = jsonParser.a(null);
        } else if ("score".equals(str)) {
            jsonTweetPivotData.c = jsonParser.q();
        } else if ("url".equals(str)) {
            jsonTweetPivotData.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonTweetPivotData jsonTweetPivotData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetPivotData, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetPivotData jsonTweetPivotData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("name", jsonTweetPivotData.a);
        jsonGenerator.a("score", jsonTweetPivotData.c);
        jsonGenerator.a("url", jsonTweetPivotData.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
