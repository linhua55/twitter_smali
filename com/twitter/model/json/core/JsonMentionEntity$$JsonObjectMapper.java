package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonMentionEntity$$JsonObjectMapper extends JsonMapper<JsonMentionEntity> {
    public JsonMentionEntity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMentionEntity _parse(JsonParser jsonParser) throws IOException {
        JsonMentionEntity jsonMentionEntity = new JsonMentionEntity();
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
            parseField(jsonMentionEntity, e, jsonParser);
            jsonParser.c();
        }
        return jsonMentionEntity;
    }

    public static void parseField(JsonMentionEntity jsonMentionEntity, String str, JsonParser jsonParser) throws IOException {
        if ("indices".equals(str)) {
            if (jsonParser.d() == JsonToken.d) {
                List<Integer> arrayList = new ArrayList();
                while (jsonParser.a() != JsonToken.e) {
                    arrayList.add(Integer.valueOf(jsonParser.o()));
                }
                int[] iArr = new int[arrayList.size()];
                int i = 0;
                for (Integer intValue : arrayList) {
                    int i2 = i + 1;
                    iArr[i] = intValue.intValue();
                    i = i2;
                }
                jsonMentionEntity.a = iArr;
                return;
            }
            jsonMentionEntity.a = null;
        } else if ("name".equals(str)) {
            jsonMentionEntity.d = jsonParser.a(null);
        } else if ("screen_name".equals(str)) {
            jsonMentionEntity.b = jsonParser.a(null);
        } else if ("id".equals(str)) {
            jsonMentionEntity.c = jsonParser.p();
        }
    }

    public void serialize(JsonMentionEntity jsonMentionEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMentionEntity, jsonGenerator, z);
    }

    public static void _serialize(JsonMentionEntity jsonMentionEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = jsonMentionEntity.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("name", jsonMentionEntity.d);
        jsonGenerator.a("screen_name", jsonMentionEntity.b);
        jsonGenerator.a("id", jsonMentionEntity.c);
        if (z) {
            jsonGenerator.d();
        }
    }
}
