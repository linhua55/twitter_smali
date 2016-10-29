package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonUrlEntity$$JsonObjectMapper extends JsonMapper<JsonUrlEntity> {
    public JsonUrlEntity parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonUrlEntity _parse(JsonParser jsonParser) throws IOException {
        JsonUrlEntity jsonUrlEntity = new JsonUrlEntity();
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
            parseField(jsonUrlEntity, e, jsonParser);
            jsonParser.c();
        }
        return jsonUrlEntity;
    }

    public static void parseField(JsonUrlEntity jsonUrlEntity, String str, JsonParser jsonParser) throws IOException {
        if ("display_url".equals(str)) {
            jsonUrlEntity.d = jsonParser.a(null);
        } else if ("expanded_url".equals(str)) {
            jsonUrlEntity.c = jsonParser.a(null);
        } else if ("indices".equals(str)) {
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
                jsonUrlEntity.a = iArr;
                return;
            }
            jsonUrlEntity.a = null;
        } else if ("url".equals(str)) {
            jsonUrlEntity.e = jsonParser.a(null);
        } else if ("url_https".equals(str)) {
            jsonUrlEntity.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonUrlEntity jsonUrlEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonUrlEntity, jsonGenerator, z);
    }

    public static void _serialize(JsonUrlEntity jsonUrlEntity, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("display_url", jsonUrlEntity.d);
        jsonGenerator.a("expanded_url", jsonUrlEntity.c);
        int[] iArr = jsonUrlEntity.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        jsonGenerator.a("url", jsonUrlEntity.e);
        jsonGenerator.a("url_https", jsonUrlEntity.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
