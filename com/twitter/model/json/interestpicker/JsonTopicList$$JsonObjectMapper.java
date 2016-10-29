package com.twitter.model.json.interestpicker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.interestpicker.JsonTopicList.JsonTopic;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

/* compiled from: Twttr */
public final class JsonTopicList$$JsonObjectMapper extends JsonMapper<JsonTopicList> {
    public JsonTopicList parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTopicList _parse(JsonParser jsonParser) throws IOException {
        JsonTopicList jsonTopicList = new JsonTopicList();
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
            parseField(jsonTopicList, e, jsonParser);
            jsonParser.c();
        }
        return jsonTopicList;
    }

    public static void parseField(JsonTopicList jsonTopicList, String str, JsonParser jsonParser) throws IOException {
        if ("data_version".equals(str)) {
            jsonTopicList.a = jsonParser.o();
        } else if ("root_ids".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Long> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Long.valueOf(jsonParser.p()));
                }
                long[] jArr = new long[arrayList.size()];
                int i = 0;
                for (Long longValue : arrayList) {
                    int i2 = i + 1;
                    jArr[i] = longValue.longValue();
                    i = i2;
                }
                jsonTopicList.b = jArr;
                return;
            }
            jsonTopicList.b = null;
        } else if (!"topics".equals(str)) {
        } else {
            if (jsonParser.d() == JsonToken.b) {
                Map hashMap = new HashMap();
                while (jsonParser.a() != JsonToken.c) {
                    String g = jsonParser.g();
                    jsonParser.a();
                    if (jsonParser.d() == JsonToken.m) {
                        hashMap.put(g, null);
                    } else {
                        hashMap.put(g, JsonTopicList$JsonTopic$$JsonObjectMapper._parse(jsonParser));
                    }
                }
                jsonTopicList.c = hashMap;
                return;
            }
            jsonTopicList.c = null;
        }
    }

    public void serialize(JsonTopicList jsonTopicList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTopicList, jsonGenerator, z);
    }

    public static void _serialize(JsonTopicList jsonTopicList, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("data_version", jsonTopicList.a);
        long[] jArr = jsonTopicList.b;
        if (jArr != null) {
            jsonGenerator.a("root_ids");
            jsonGenerator.a();
            for (long a : jArr) {
                jsonGenerator.a(a);
            }
            jsonGenerator.b();
        }
        Map map = jsonTopicList.c;
        if (map != null) {
            jsonGenerator.a("topics");
            jsonGenerator.c();
            for (Entry entry : map.entrySet()) {
                jsonGenerator.a(((String) entry.getKey()).toString());
                if (entry.getValue() == null) {
                    jsonGenerator.e();
                } else if (entry.getValue() != null) {
                    JsonTopicList$JsonTopic$$JsonObjectMapper._serialize((JsonTopic) entry.getValue(), jsonGenerator, true);
                }
            }
            jsonGenerator.d();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
