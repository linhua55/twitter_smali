package com.twitter.model.json.search;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonTwitterStatusReason$$JsonObjectMapper extends JsonMapper<JsonTwitterStatusReason> {
    public JsonTwitterStatusReason parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonTwitterStatusReason _parse(JsonParser jsonParser) throws IOException {
        JsonTwitterStatusReason jsonTwitterStatusReason = new JsonTwitterStatusReason();
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
            parseField(jsonTwitterStatusReason, e, jsonParser);
            jsonParser.c();
        }
        return jsonTwitterStatusReason;
    }

    public static void parseField(JsonTwitterStatusReason jsonTwitterStatusReason, String str, JsonParser jsonParser) throws IOException {
        if ("icon_type".equals(str)) {
            jsonTwitterStatusReason.b = jsonParser.a(null);
        } else if ("text".equals(str)) {
            jsonTwitterStatusReason.a = jsonParser.a(null);
        }
    }

    public void serialize(JsonTwitterStatusReason jsonTwitterStatusReason, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonTwitterStatusReason, jsonGenerator, z);
    }

    public static void _serialize(JsonTwitterStatusReason jsonTwitterStatusReason, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("icon_type", jsonTwitterStatusReason.b);
        jsonGenerator.a("text", jsonTwitterStatusReason.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
