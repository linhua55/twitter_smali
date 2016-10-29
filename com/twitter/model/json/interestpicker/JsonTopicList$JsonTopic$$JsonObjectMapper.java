package com.twitter.model.json.interestpicker;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.interestpicker.JsonTopicList.JsonTopic;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTopicList$JsonTopic$$JsonObjectMapper extends JsonMapper<JsonTopic> {
    public JsonTopic parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTopic _parse(JsonParser jsonParser) throws IOException {
        JsonTopic jsonTopic = new JsonTopic();
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
            parseField(jsonTopic, e, jsonParser);
            jsonParser.c();
        }
        return jsonTopic;
    }

    public static void parseField(JsonTopic jsonTopic, String str, JsonParser jsonParser) throws IOException {
        if ("child_ids".equals(str)) {
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
                jsonTopic.d = jArr;
                return;
            }
            jsonTopic.d = null;
        } else if ("icon_url".equals(str)) {
            jsonTopic.c = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonTopic.b = jsonParser.p();
        } else if ("interest_context_token".equals(str)) {
            jsonTopic.e = jsonParser.a(null);
        } else if ("name".equals(str)) {
            jsonTopic.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTopic jsonTopic, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTopic, jsonGenerator, z);
    }

    public static void _serialize(JsonTopic jsonTopic, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        long[] jArr = jsonTopic.d;
        if (jArr != null) {
            jsonGenerator.a("child_ids");
            jsonGenerator.a();
            for (long a : jArr) {
                jsonGenerator.a(a);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("icon_url", jsonTopic.c);
        jsonGenerator.a("id", jsonTopic.b);
        jsonGenerator.a("interest_context_token", jsonTopic.e);
        jsonGenerator.a("name", jsonTopic.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
