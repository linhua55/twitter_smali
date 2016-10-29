package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.timeline.JsonRecap.JsonBanner;
import com.twitter.model.timeline.a;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonRecap$JsonBanner$$JsonObjectMapper extends JsonMapper<JsonBanner> {
    public JsonBanner parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonBanner _parse(JsonParser jsonParser) throws IOException {
        JsonBanner jsonBanner = new JsonBanner();
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
            parseField(jsonBanner, e, jsonParser);
            jsonParser.c();
        }
        return jsonBanner;
    }

    public static void parseField(JsonBanner jsonBanner, String str, JsonParser jsonParser) throws IOException {
        if (!"tweets".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.b) {
            Map hashMap = new HashMap();
            while (jsonParser.a() != JsonToken.c) {
                String g = jsonParser.g();
                jsonParser.a();
                if (jsonParser.d() == JsonToken.m) {
                    hashMap.put(g, null);
                } else {
                    hashMap.put(g, LoganSquare.typeConverterFor(a.class).parse(jsonParser));
                }
            }
            jsonBanner.a = hashMap;
            return;
        }
        jsonBanner.a = null;
    }

    public void serialize(JsonBanner jsonBanner, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonBanner, jsonGenerator, z);
    }

    public static void _serialize(JsonBanner jsonBanner, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonBanner.a;
        if (map != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(a.class).serialize(entry.getValue(), "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
