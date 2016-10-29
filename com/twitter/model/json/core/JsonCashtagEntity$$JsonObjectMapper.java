package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonCashtagEntity$$JsonObjectMapper extends JsonMapper<JsonCashtagEntity> {
    public JsonCashtagEntity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCashtagEntity _parse(JsonParser jsonParser) throws IOException {
        JsonCashtagEntity jsonCashtagEntity = new JsonCashtagEntity();
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
            parseField(jsonCashtagEntity, e, jsonParser);
            jsonParser.c();
        }
        return jsonCashtagEntity;
    }

    public static void parseField(JsonCashtagEntity jsonCashtagEntity, String str, JsonParser jsonParser) throws IOException {
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
                jsonCashtagEntity.a = iArr;
                return;
            }
            jsonCashtagEntity.a = null;
        } else if ("text".equals(str)) {
            jsonCashtagEntity.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonCashtagEntity jsonCashtagEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCashtagEntity, jsonGenerator, z);
    }

    public static void _serialize(JsonCashtagEntity jsonCashtagEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = jsonCashtagEntity.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("text", jsonCashtagEntity.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
