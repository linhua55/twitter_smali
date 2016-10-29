package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonContactIds$$JsonObjectMapper extends JsonMapper<JsonContactIds> {
    public JsonContactIds parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonContactIds _parse(JsonParser jsonParser) throws IOException {
        JsonContactIds jsonContactIds = new JsonContactIds();
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
            parseField(jsonContactIds, e, jsonParser);
            jsonParser.c();
        }
        return jsonContactIds;
    }

    public static void parseField(JsonContactIds jsonContactIds, String str, JsonParser jsonParser) throws IOException {
        if (!"contact_ids".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                Object valueOf = jsonParser.d() == JsonToken.m ? null : Long.valueOf(jsonParser.p());
                if (valueOf != null) {
                    arrayList.add(valueOf);
                }
            }
            jsonContactIds.a = arrayList;
            return;
        }
        jsonContactIds.a = null;
    }

    public void serialize(JsonContactIds jsonContactIds, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonContactIds, jsonGenerator, z);
    }

    public static void _serialize(JsonContactIds jsonContactIds, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Long> list = jsonContactIds.a;
        if (list != null) {
            jsonGenerator.a("contact_ids");
            jsonGenerator.a();
            for (Long longValue : list) {
                jsonGenerator.a(longValue.longValue());
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
