package com.twitter.model.json.timeline;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonStrings$$JsonObjectMapper extends JsonMapper<JsonStrings> {
    public JsonStrings parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonStrings _parse(JsonParser jsonParser) throws IOException {
        JsonStrings jsonStrings = new JsonStrings();
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
            parseField(jsonStrings, e, jsonParser);
            jsonParser.c();
        }
        return jsonStrings;
    }

    public static void parseField(JsonStrings jsonStrings, String str, JsonParser jsonParser) throws IOException {
        if ("header".equals(str)) {
            jsonStrings.a = jsonParser.a(null);
        } else if ("show_more".equals(str)) {
            jsonStrings.b = jsonParser.a(null);
        }
    }

    public void serialize(JsonStrings jsonStrings, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonStrings, jsonGenerator, z);
    }

    public static void _serialize(JsonStrings jsonStrings, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("header", jsonStrings.a);
        jsonGenerator.a("show_more", jsonStrings.b);
        if (z) {
            jsonGenerator.d();
        }
    }
}
