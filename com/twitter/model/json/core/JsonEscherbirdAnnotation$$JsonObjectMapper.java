package com.twitter.model.json.core;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonEscherbirdAnnotation$$JsonObjectMapper extends JsonMapper<JsonEscherbirdAnnotation> {
    public JsonEscherbirdAnnotation parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonEscherbirdAnnotation _parse(JsonParser jsonParser) throws IOException {
        JsonEscherbirdAnnotation jsonEscherbirdAnnotation = new JsonEscherbirdAnnotation();
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
            parseField(jsonEscherbirdAnnotation, e, jsonParser);
            jsonParser.c();
        }
        return jsonEscherbirdAnnotation;
    }

    public static void parseField(JsonEscherbirdAnnotation jsonEscherbirdAnnotation, String str, JsonParser jsonParser) throws IOException {
        if ("domain_id".equals(str)) {
            jsonEscherbirdAnnotation.b = jsonParser.o();
        } else if ("entity_id".equals(str)) {
            jsonEscherbirdAnnotation.c = jsonParser.p();
        } else if ("group_id".equals(str)) {
            jsonEscherbirdAnnotation.a = jsonParser.o();
        }
    }

    public void serialize(JsonEscherbirdAnnotation jsonEscherbirdAnnotation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonEscherbirdAnnotation, jsonGenerator, z);
    }

    public static void _serialize(JsonEscherbirdAnnotation jsonEscherbirdAnnotation, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("domain_id", jsonEscherbirdAnnotation.b);
        jsonGenerator.a("entity_id", jsonEscherbirdAnnotation.c);
        jsonGenerator.a("group_id", jsonEscherbirdAnnotation.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
