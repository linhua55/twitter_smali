package com.twitter.model.json.timeline.urt;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import com.twitter.model.core.cn;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonGlobalObjects$$JsonObjectMapper extends JsonMapper<JsonGlobalObjects> {
    public JsonGlobalObjects parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonGlobalObjects _parse(JsonParser jsonParser) throws IOException {
        JsonGlobalObjects jsonGlobalObjects = new JsonGlobalObjects();
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
            parseField(jsonGlobalObjects, e, jsonParser);
            jsonParser.c();
        }
        return jsonGlobalObjects;
    }

    public static void parseField(JsonGlobalObjects jsonGlobalObjects, String str, JsonParser jsonParser) throws IOException {
        Map hashMap;
        String g;
        if ("tweets".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, LoganSquare.typeConverterFor(cn.class).parse(jsonParser));
                    }
                }
                jsonGlobalObjects.a = hashMap;
                return;
            }
            jsonGlobalObjects.a = null;
        } else if (!"users".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, LoganSquare.typeConverterFor(TwitterUser.class).parse(jsonParser));
                    }
                }
                jsonGlobalObjects.b = hashMap;
                return;
            }
            jsonGlobalObjects.b = null;
        }
    }

    public void serialize(JsonGlobalObjects jsonGlobalObjects, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonGlobalObjects, jsonGenerator, z);
    }

    public static void _serialize(JsonGlobalObjects jsonGlobalObjects, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonGlobalObjects.a;
        if (map != null) {
            jsonGenerator.a("tweets");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(cn.class).serialize(entry.getValue(), "lslocaltweetsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        map = jsonGlobalObjects.b;
        if (map != null) {
            jsonGenerator.a("users");
            jsonGenerator.c();
            for (Entry entry2 : map.entrySet()) {
                jsonGenerator.a(((String) entry2.getKey()).toString());
                if (entry2.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry2.getValue() != null) {
                    LoganSquare.typeConverterFor(TwitterUser.class).serialize(entry2.getValue(), "lslocalusersElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
