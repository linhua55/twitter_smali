package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonHashtagEntity$$JsonObjectMapper extends JsonMapper<JsonHashtagEntity> {
    public JsonHashtagEntity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHashtagEntity _parse(JsonParser jsonParser) throws IOException {
        JsonHashtagEntity jsonHashtagEntity = new JsonHashtagEntity();
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
            parseField(jsonHashtagEntity, e, jsonParser);
            jsonParser.c();
        }
        return jsonHashtagEntity;
    }

    public static void parseField(JsonHashtagEntity jsonHashtagEntity, String str, JsonParser jsonParser) throws IOException {
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
                jsonHashtagEntity.a = iArr;
                return;
            }
            jsonHashtagEntity.a = null;
        } else if ("text".equals(str)) {
            jsonHashtagEntity.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonHashtagEntity jsonHashtagEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHashtagEntity, jsonGenerator, z);
    }

    public static void _serialize(JsonHashtagEntity jsonHashtagEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = jsonHashtagEntity.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("text", jsonHashtagEntity.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
