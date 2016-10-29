package com.twitter.model.json.moments;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonThemeData$$JsonObjectMapper extends JsonMapper<JsonThemeData> {
    public JsonThemeData parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonThemeData _parse(JsonParser jsonParser) throws IOException {
        JsonThemeData jsonThemeData = new JsonThemeData();
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
            parseField(jsonThemeData, e, jsonParser);
            jsonParser.c();
        }
        return jsonThemeData;
    }

    public static void parseField(JsonThemeData jsonThemeData, String str, JsonParser jsonParser) throws IOException {
        if ("bg".equals(str)) {
            jsonThemeData.b = jsonParser.o();
        } else if ("fg".equals(str)) {
            jsonThemeData.a = jsonParser.o();
        }
    }

    public void serialize(JsonThemeData jsonThemeData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonThemeData, jsonGenerator, z);
    }

    public static void _serialize(JsonThemeData jsonThemeData, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("bg", jsonThemeData.b);
        jsonGenerator.a("fg", jsonThemeData.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
