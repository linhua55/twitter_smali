package com.twitter.model.json.activity;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonDisplayTextBoldIndexes$$JsonObjectMapper extends JsonMapper<JsonDisplayTextBoldIndexes> {
    public JsonDisplayTextBoldIndexes parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonDisplayTextBoldIndexes _parse(JsonParser jsonParser) throws IOException {
        JsonDisplayTextBoldIndexes jsonDisplayTextBoldIndexes = new JsonDisplayTextBoldIndexes();
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
            parseField(jsonDisplayTextBoldIndexes, e, jsonParser);
            jsonParser.c();
        }
        return jsonDisplayTextBoldIndexes;
    }

    public static void parseField(JsonDisplayTextBoldIndexes jsonDisplayTextBoldIndexes, String str, JsonParser jsonParser) throws IOException {
        if (!"indexes".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Object valueOf = jsonParser.d() == JsonToken.m ? null : Integer.valueOf(jsonParser.o());
                if (valueOf != null) {
                    arrayList.add(valueOf);
                }
            }
            jsonDisplayTextBoldIndexes.a = arrayList;
            return;
        }
        jsonDisplayTextBoldIndexes.a = null;
    }

    public void serialize(JsonDisplayTextBoldIndexes jsonDisplayTextBoldIndexes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonDisplayTextBoldIndexes, jsonGenerator, z);
    }

    public static void _serialize(JsonDisplayTextBoldIndexes jsonDisplayTextBoldIndexes, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Integer> list = jsonDisplayTextBoldIndexes.a;
        if (list != null) {
            jsonGenerator.a("indexes");
            jsonGenerator.a();
            for (Integer intValue : list) {
                jsonGenerator.b(intValue.intValue());
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
