package com.twitter.model.json.contacts;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonContactVcards$$JsonObjectMapper extends JsonMapper<JsonContactVcards> {
    public JsonContactVcards parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonContactVcards _parse(JsonParser jsonParser) throws IOException {
        JsonContactVcards jsonContactVcards = new JsonContactVcards();
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
            parseField(jsonContactVcards, e, jsonParser);
            jsonParser.c();
        }
        return jsonContactVcards;
    }

    public static void parseField(JsonContactVcards jsonContactVcards, String str, JsonParser jsonParser) throws IOException {
        if (!"vcards".equals(str)) {
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
            jsonContactVcards.a = arrayList;
            return;
        }
        jsonContactVcards.a = null;
    }

    public void serialize(JsonContactVcards jsonContactVcards, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonContactVcards, jsonGenerator, z);
    }

    public static void _serialize(JsonContactVcards jsonContactVcards, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<String> list = jsonContactVcards.a;
        if (list != null) {
            jsonGenerator.a("vcards");
            jsonGenerator.a();
            for (String b : list) {
                jsonGenerator.b(b);
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
