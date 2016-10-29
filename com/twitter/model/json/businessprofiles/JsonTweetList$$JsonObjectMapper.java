package com.twitter.model.json.businessprofiles;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTweetList$$JsonObjectMapper extends JsonMapper<JsonTweetList> {
    public JsonTweetList parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetList _parse(JsonParser jsonParser) throws IOException {
        JsonTweetList jsonTweetList = new JsonTweetList();
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
            parseField(jsonTweetList, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetList;
    }

    public static void parseField(JsonTweetList jsonTweetList, String str, JsonParser jsonParser) throws IOException {
        if ("timeline_id".equals(str)) {
            jsonTweetList.b = jsonParser.a(null);
        } else if (!"tweet_ids".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonTweetList.a = arrayList;
                return;
            }
            jsonTweetList.a = null;
        }
    }

    public void serialize(JsonTweetList jsonTweetList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetList, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetList jsonTweetList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("timeline_id", jsonTweetList.b);
        List<String> list = jsonTweetList.a;
        if (list != null) {
            jsonGenerator.a("tweet_ids");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
