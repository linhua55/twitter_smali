package com.twitter.model.json.card;

import cgh;
import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.TwitterUser;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonCardInstanceData$$JsonObjectMapper extends JsonMapper<JsonCardInstanceData> {
    public JsonCardInstanceData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCardInstanceData _parse(JsonParser jsonParser) throws IOException {
        JsonCardInstanceData jsonCardInstanceData = new JsonCardInstanceData();
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
            parseField(jsonCardInstanceData, e, jsonParser);
            jsonParser.c();
        }
        return jsonCardInstanceData;
    }

    public static void parseField(JsonCardInstanceData jsonCardInstanceData, String str, JsonParser jsonParser) throws IOException {
        Map hashMap;
        String g;
        if ("binding_values".equals(str)) {
            if (jsonParser.d() == JsonToken.b) {
                hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, LoganSquare.typeConverterFor(cgh.class).parse(jsonParser));
                    }
                }
                jsonCardInstanceData.e = hashMap;
                return;
            }
            jsonCardInstanceData.e = null;
        } else if ("card_platform".equals(str)) {
            jsonCardInstanceData.d = JsonCardInstanceData$JsonCardPlatform$$JsonObjectMapper._parse(jsonParser);
        } else if ("name".equals(str)) {
            jsonCardInstanceData.a = jsonParser.a(null);
        } else if ("url".equals(str)) {
            jsonCardInstanceData.b = jsonParser.a(null);
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
                jsonCardInstanceData.c = hashMap;
                return;
            }
            jsonCardInstanceData.c = null;
        }
    }

    public void serialize(JsonCardInstanceData jsonCardInstanceData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCardInstanceData, jsonGenerator, z);
    }

    public static void _serialize(JsonCardInstanceData jsonCardInstanceData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        Map map = jsonCardInstanceData.e;
        if (map != null) {
            jsonGenerator.a("binding_values");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    LoganSquare.typeConverterFor(cgh.class).serialize(entry.getValue(), "lslocalbinding_valuesElement", false, jsonGenerator);
                }
            }
            jsonGenerator.d();
        }
        if (jsonCardInstanceData.d != null) {
            jsonGenerator.a("card_platform");
            JsonCardInstanceData$JsonCardPlatform$$JsonObjectMapper._serialize(jsonCardInstanceData.d, jsonGenerator, true);
        }
        jsonGenerator.a("name", jsonCardInstanceData.a);
        jsonGenerator.a("url", jsonCardInstanceData.b);
        map = jsonCardInstanceData.c;
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
