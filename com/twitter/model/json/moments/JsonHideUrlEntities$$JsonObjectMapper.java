package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonHideUrlEntities$$JsonObjectMapper extends JsonMapper<JsonHideUrlEntities> {
    public JsonHideUrlEntities parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonHideUrlEntities _parse(JsonParser jsonParser) throws IOException {
        JsonHideUrlEntities jsonHideUrlEntities = new JsonHideUrlEntities();
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
            parseField(jsonHideUrlEntities, e, jsonParser);
            jsonParser.c();
        }
        return jsonHideUrlEntities;
    }

    public static void parseField(JsonHideUrlEntities jsonHideUrlEntities, String str, JsonParser jsonParser) throws IOException {
        if (!"indices".equals(str)) {
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
            jsonHideUrlEntities.a = arrayList;
            return;
        }
        jsonHideUrlEntities.a = null;
    }

    public void serialize(JsonHideUrlEntities jsonHideUrlEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonHideUrlEntities, jsonGenerator, z);
    }

    public static void _serialize(JsonHideUrlEntities jsonHideUrlEntities, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<Integer> list = jsonHideUrlEntities.a;
        if (list != null) {
            jsonGenerator.a("indices");
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
