package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaFeatures$$JsonObjectMapper extends JsonMapper<JsonMediaFeatures> {
    public JsonMediaFeatures parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaFeatures _parse(JsonParser jsonParser) throws IOException {
        JsonMediaFeatures jsonMediaFeatures = new JsonMediaFeatures();
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
            parseField(jsonMediaFeatures, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaFeatures;
    }

    public static void parseField(JsonMediaFeatures jsonMediaFeatures, String str, JsonParser jsonParser) throws IOException {
        if ("large".equals(str)) {
            jsonMediaFeatures.b = JsonMediaFeatures$SizeDependent$$JsonObjectMapper._parse(jsonParser);
        } else if ("all".equals(str)) {
            jsonMediaFeatures.a = JsonMediaFeatures$SizeIndependent$$JsonObjectMapper._parse(jsonParser);
        }
    }

    public void serialize(JsonMediaFeatures jsonMediaFeatures, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaFeatures, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaFeatures jsonMediaFeatures, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        if (jsonMediaFeatures.b != null) {
            jsonGenerator.a("large");
            JsonMediaFeatures$SizeDependent$$JsonObjectMapper._serialize(jsonMediaFeatures.b, jsonGenerator, true);
        }
        if (jsonMediaFeatures.a != null) {
            jsonGenerator.a("all");
            JsonMediaFeatures$SizeIndependent$$JsonObjectMapper._serialize(jsonMediaFeatures.a, jsonGenerator, true);
        }
        if (z) {
            jsonGenerator.d();
        }
    }
}
