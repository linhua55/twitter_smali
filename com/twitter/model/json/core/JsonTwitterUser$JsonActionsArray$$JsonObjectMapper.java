package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.json.core.JsonTwitterUser.JsonActionsArray;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterUser$JsonActionsArray$$JsonObjectMapper extends JsonMapper<JsonActionsArray> {
    public JsonActionsArray parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonActionsArray _parse(JsonParser jsonParser) throws IOException {
        JsonActionsArray jsonActionsArray = new JsonActionsArray();
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
            parseField(jsonActionsArray, e, jsonParser);
            jsonParser.c();
        }
        return jsonActionsArray;
    }

    public static void parseField(JsonActionsArray jsonActionsArray, String str, JsonParser jsonParser) throws IOException {
        if (!"disallow".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                String a = jsonParser.a(null);
                if (a != null) {
                    arrayList.add(a);
                }
            }
            jsonActionsArray.a = (String[]) arrayList.toArray(new String[arrayList.size()]);
            return;
        }
        jsonActionsArray.a = null;
    }

    public void serialize(JsonActionsArray jsonActionsArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonActionsArray, jsonGenerator, z);
    }

    public static void _serialize(JsonActionsArray jsonActionsArray, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        String[] strArr = jsonActionsArray.a;
        if (strArr != null) {
            jsonGenerator.a("disallow");
            jsonGenerator.a();
            for (String b : strArr) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
