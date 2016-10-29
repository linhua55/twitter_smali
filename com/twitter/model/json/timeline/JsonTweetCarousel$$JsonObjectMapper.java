package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTweetCarousel$$JsonObjectMapper extends JsonMapper<JsonTweetCarousel> {
    public JsonTweetCarousel parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTweetCarousel _parse(JsonParser jsonParser) throws IOException {
        JsonTweetCarousel jsonTweetCarousel = new JsonTweetCarousel();
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
            parseField(jsonTweetCarousel, e, jsonParser);
            jsonParser.c();
        }
        return jsonTweetCarousel;
    }

    public static void parseField(JsonTweetCarousel jsonTweetCarousel, String str, JsonParser jsonParser) throws IOException {
        if ("id".equals(str)) {
            jsonTweetCarousel.a = jsonParser.a(null);
        } else if (!"tweets".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    String a = jsonParser.a(null);
                    if (a != null) {
                        arrayList.add(a);
                    }
                }
                jsonTweetCarousel.b = arrayList;
                return;
            }
            jsonTweetCarousel.b = null;
        }
    }

    public void serialize(JsonTweetCarousel jsonTweetCarousel, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTweetCarousel, jsonGenerator, z);
    }

    public static void _serialize(JsonTweetCarousel jsonTweetCarousel, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("id", jsonTweetCarousel.a);
        List<String> list = jsonTweetCarousel.b;
        if (list != null) {
            jsonGenerator.a("tweets");
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
