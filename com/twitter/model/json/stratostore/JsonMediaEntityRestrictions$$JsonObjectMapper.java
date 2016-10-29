package com.twitter.model.json.stratostore;

import com.bluelinelabs.logansquare.JsonMapper;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;

/* compiled from: Twttr */
public final class JsonMediaEntityRestrictions$$JsonObjectMapper extends JsonMapper<JsonMediaEntityRestrictions> {
    public JsonMediaEntityRestrictions parse(JsonParser jsonParser) throws IOException {
        return _parse(jsonParser);
    }

    public static JsonMediaEntityRestrictions _parse(JsonParser jsonParser) throws IOException {
        JsonMediaEntityRestrictions jsonMediaEntityRestrictions = new JsonMediaEntityRestrictions();
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
            parseField(jsonMediaEntityRestrictions, e, jsonParser);
            jsonParser.c();
        }
        return jsonMediaEntityRestrictions;
    }

    public static void parseField(JsonMediaEntityRestrictions jsonMediaEntityRestrictions, String str, JsonParser jsonParser) throws IOException {
        if ("isDmca".equals(str)) {
            jsonMediaEntityRestrictions.a = jsonParser.r();
        }
    }

    public void serialize(JsonMediaEntityRestrictions jsonMediaEntityRestrictions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        _serialize(jsonMediaEntityRestrictions, jsonGenerator, z);
    }

    public static void _serialize(JsonMediaEntityRestrictions jsonMediaEntityRestrictions, JsonGenerator jsonGenerator, boolean z) throws IOException {
        if (z) {
            jsonGenerator.c();
        }
        jsonGenerator.a("isDmca", jsonMediaEntityRestrictions.a);
        if (z) {
            jsonGenerator.d();
        }
    }
}
