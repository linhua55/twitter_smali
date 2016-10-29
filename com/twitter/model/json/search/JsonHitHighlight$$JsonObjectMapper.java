package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonHitHighlight$$JsonObjectMapper extends JsonMapper<JsonHitHighlight> {
    public JsonHitHighlight parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHitHighlight _parse(JsonParser jsonParser) throws IOException {
        JsonHitHighlight jsonHitHighlight = new JsonHitHighlight();
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
            parseField(jsonHitHighlight, e, jsonParser);
            jsonParser.c();
        }
        return jsonHitHighlight;
    }

    public static void parseField(JsonHitHighlight jsonHitHighlight, String str, JsonParser jsonParser) throws IOException {
        if (!"indices".equals(str)) {
            return;
        }
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
            jsonHitHighlight.a = iArr;
            return;
        }
        jsonHitHighlight.a = null;
    }

    public void serialize(JsonHitHighlight jsonHitHighlight, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHitHighlight, jsonGenerator, z);
    }

    public static void _serialize(JsonHitHighlight jsonHitHighlight, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        int[] iArr = jsonHitHighlight.a;
        if (iArr != null) {
            jsonGenerator.a("indices");
            jsonGenerator.a();
            for (int b : iArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
