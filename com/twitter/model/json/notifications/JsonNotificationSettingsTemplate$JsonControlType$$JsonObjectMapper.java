package com.twitter.model.json.notifications;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.notifications.JsonNotificationSettingsTemplate.JsonControlType;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonNotificationSettingsTemplate$JsonControlType$$JsonObjectMapper extends JsonMapper<JsonControlType> {
    public JsonControlType parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonControlType _parse(JsonParser jsonParser) throws IOException {
        JsonControlType jsonControlType = new JsonControlType();
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
            parseField(jsonControlType, e, jsonParser);
            jsonParser.c();
        }
        return jsonControlType;
    }

    public static void parseField(JsonControlType jsonControlType, String str, JsonParser jsonParser) throws IOException {
        if ("default".equals(str)) {
            jsonControlType.a = jsonParser.a(null);
        } else if (!"values".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.d) {
                List arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    Object hashMap;
                    if (jsonParser.d() == JsonToken.b) {
                        hashMap = new HashMap();
                        while (jsonParser.a() != JsonToken.c) {
                            String g = jsonParser.g();
                            jsonParser.a();
                            if (jsonParser.d() == JsonToken.m) {
                                hashMap.put(g, null);
                            } else {
                                hashMap.put(g, jsonParser.a(null));
                            }
                        }
                    } else {
                        hashMap = null;
                    }
                    if (hashMap != null) {
                        arrayList.add(hashMap);
                    }
                }
                jsonControlType.b = arrayList;
                return;
            }
            jsonControlType.b = null;
        }
    }

    public void serialize(JsonControlType jsonControlType, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonControlType, jsonGenerator, z);
    }

    public static void _serialize(JsonControlType jsonControlType, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("default", jsonControlType.a);
        List<Map> list = jsonControlType.b;
        if (list != null) {
            jsonGenerator.a("values");
            jsonGenerator.a();
            for (Map map : list) {
                if (map != null) {
                    jsonGenerator.c();
                    for (Entry entry : map.entrySet()) {
                        jsonGenerator.a(((String) entry.getKey()).toString());
                        if (entry.getValue() == null) {
                            jsonGenerator.e();
                        } else {
                            jsonGenerator.b((String) entry.getValue());
                        }
                    }
                    jsonGenerator.d();
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
