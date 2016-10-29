package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.bluelinelabs.logansquare.LoganSquare;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.twitter.model.core.ca;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: Twttr */
public final class JsonTwitterErrors$$JsonObjectMapper extends JsonMapper<JsonTwitterErrors> {
    public JsonTwitterErrors parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterErrors _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterErrors jsonTwitterErrors = new JsonTwitterErrors();
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
            parseField(jsonTwitterErrors, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterErrors;
    }

    public static void parseField(JsonTwitterErrors jsonTwitterErrors, String str, JsonParser jsonParser) throws IOException {
        if (!"errors".equals(str)) {
            return;
        }
        if (jsonParser.d() == JsonToken.d) {
            List arrayList = new ArrayList();
            while (jsonParser.a() != JsonToken.e) {
                ca caVar = (ca) LoganSquare.typeConverterFor(ca.class).parse(jsonParser);
                if (caVar != null) {
                    arrayList.add(caVar);
                }
            }
            jsonTwitterErrors.a = arrayList;
            return;
        }
        jsonTwitterErrors.a = null;
    }

    public void serialize(JsonTwitterErrors jsonTwitterErrors, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterErrors, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterErrors jsonTwitterErrors, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        List<ca> list = jsonTwitterErrors.a;
        if (list != null) {
            jsonGenerator.a("errors");
            jsonGenerator.a();
            for (ca caVar : list) {
                if (caVar != null) {
                    LoganSquare.typeConverterFor(ca.class).serialize(caVar, "lslocalerrorsElement", false, jsonGenerator);
                }
            }
            jsonGenerator.b();
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
