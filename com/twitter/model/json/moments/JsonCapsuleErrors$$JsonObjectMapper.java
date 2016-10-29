package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.moments.d;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonCapsuleErrors$$JsonObjectMapper extends JsonMapper<JsonCapsuleErrors> {
    public JsonCapsuleErrors parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonCapsuleErrors _parse(JsonParser jsonParser) throws IOException {
        JsonCapsuleErrors jsonCapsuleErrors = new JsonCapsuleErrors();
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
            parseField(jsonCapsuleErrors, e, jsonParser);
            jsonParser.c();
        }
        return jsonCapsuleErrors;
    }

    public static void parseField(JsonCapsuleErrors jsonCapsuleErrors, String str, JsonParser jsonParser) throws IOException {
        if (!"errors".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                d dVar = (d) LoganSquare.typeConverterFor(d.class).parse(jsonParser);
                if (dVar != null) {
                    arrayList.add(dVar);
                }
            }
            jsonCapsuleErrors.a = arrayList;
            return;
        }
        jsonCapsuleErrors.a = null;
    }

    public void serialize(JsonCapsuleErrors jsonCapsuleErrors, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonCapsuleErrors, jsonGenerator, z);
    }

    public static void _serialize(JsonCapsuleErrors jsonCapsuleErrors, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<d> list = jsonCapsuleErrors.a;
        if (list != null) {
            jsonGenerator.a("errors");
            jsonGenerator.a();
            for (d dVar : list) {
                if (dVar != null) {
                    LoganSquare.typeConverterFor(d.class).serialize(dVar, "lslocalerrorsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
